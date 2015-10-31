{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards   #-}

-- |
-- Module      : Network.Google.Auth.ApplicationDefault
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Auth.ApplicationDefault where

import           Control.Applicative
import           Control.Exception.Lens          (catching, throwingM)
import           Control.Monad                   (unless)
import           Control.Monad.Catch
import           Control.Monad.IO.Class          (MonadIO (..))
import           Data.Aeson
import           Data.Aeson.Types                (parseEither)
import qualified Data.ByteString.Lazy            as LBS
import qualified Data.Text                       as Text
import           Network.Google.Compute.Metadata (isGCE)
import           Network.Google.Internal.Auth


import           Network.HTTP.Conduit            (Manager)
import           System.Directory                (doesFileExist,
                                                  getHomeDirectory)
import           System.Environment              (lookupEnv)
import           System.FilePath                 ((</>))
import           System.Info                     (os)

-- | The environment variable name which is used to specify the directory
-- containing the @application_default_credentials.json@ generated by @gcloud init@.
cloudSDKConfigDir :: String
cloudSDKConfigDir = "CLOUDSDK_CONFIG"

-- | Return the filepath to the Cloud SDK well known file location such as
-- @~\/.config\/gcloud\/application_default_credentials.json@.
cloudSDKConfigPath :: MonadIO m => m FilePath
cloudSDKConfigPath = do
    m <- liftIO (lookupEnv cloudSDKConfigDir)
    case m of
        Just d  -> pure $! d </> "application_default_credentials.json"
        Nothing -> do
            d <- getConfigDirectory
            pure $! d </> "gcloud/application_default_credentials.json"

-- | The environment variable pointing the file with local
-- Application Default Credentials.
defaultCredentialsFile :: String
defaultCredentialsFile = "GOOGLE_APPLICATION_CREDENTIALS"

-- | Lookup the @GOOGLE_APPLICATION_CREDENTIALS@ environment variable for the
-- default application credentials filepath.
defaultCredentialsPath :: MonadIO m => m (Maybe FilePath)
defaultCredentialsPath = liftIO (lookupEnv defaultCredentialsFile)

-- | Attempt credentials discovery via the following steps:
--
-- * Read the default credentials from a file specified by
-- the environment variable @GOOGLE_APPLICATION_CREDENTIALS@ if it exists.
--
-- * Read the platform equivalent of @~\/.config\/gcloud\/application_default_credentials.json@ if it exists.
-- The @~/.config@ component of the path can be overriden by the environment
-- variable @CLOUDSDK_CONFIG@ if it exists.
--
-- * Retrieve the default service account application credentials if
-- running on GCE. The environment variable @NO_GCE_CHECK@ can be used to
-- skip this check if set to a truthy value such as @1@ or @true@.
--
-- The specified 'Scope's are used to authorize any @service_account@ that is
-- found with the appropriate scopes, otherwise they are not used. See the
-- top-level module of each individual @gogol-*@ library for a list of available
-- scopes, such as @Network.Google.Compute.computeScope@.
getApplicationDefault :: (MonadIO m, MonadCatch m)
                      => Manager
                      -> m (Credentials s)
getApplicationDefault m =
    catching _MissingFileError fromWellKnownPath $ \f -> do
        p <- isGCE m
        unless p $
            throwingM _MissingFileError f
        pure $! FromMetadata "default"

-- | Attempt to load either a @service_account@ or @authorized_user@ formatted
-- file to obtain the credentials neccessary to perform a token refresh.
--
-- The specified 'Scope's are used to authorize any @service_account@ that is
-- found with the appropriate scopes, otherwise they are not used. See the
-- top-level module of each individual @gogol-*@ library for a list of available
-- scopes, such as @Network.Google.Compute.computeScope@.
--
-- /See:/ 'cloudSDKConfigPath', 'defaultCredentialsPath'.
fromWellKnownPath :: (MonadIO m, MonadCatch m) => m (Credentials s)
fromWellKnownPath = do
    f <- defaultCredentialsPath
    case f of
        Just x  -> fromFilePath x
        Nothing -> do
            x <- cloudSDKConfigPath
            fromFilePath x

-- | Attempt to load either a @service_account@ or @authorized_user@ formatted
-- file to obtain the credentials neccessary to perform a token refresh from
-- the specified file.
--
-- The specified 'Scope's are used to authorize any @service_account@ that is
-- found with the appropriate scopes, otherwise they are not used. See the
-- top-level module of each individual @gogol-*@ library for a list of available
-- scopes, such as @Network.Google.Compute.computeScope@.
fromFilePath :: (MonadIO m, MonadCatch m) => FilePath -> m (Credentials s)
fromFilePath f = do
    p  <- liftIO (doesFileExist f)
    unless p $
        throwM (MissingFileError f)
    bs <- liftIO (LBS.readFile f)
    either (throwM . InvalidFileError f . Text.pack) pure
           (fromJSONCredentials bs)

-- | Attempt to parse either a @service_account@ or @authorized_user@ formatted
-- JSON value to obtain credentials.
fromJSONCredentials :: LBS.ByteString -> Either String (Credentials s)
fromJSONCredentials bs = do
    v <- eitherDecode' bs
    let x = FromAccount <$> parseEither parseJSON v
        y = FromUser    <$> parseEither parseJSON v
    case (x, y) of
        (Left xe, Left ye) -> Left $
              "Failed parsing service_account: " ++ xe ++
            ", Failed parsing authorized_user: " ++ ye
        _                  -> x <|> y

getConfigDirectory :: MonadIO m => m FilePath
getConfigDirectory = do
    h <- liftIO getHomeDirectory
    if os == "windows"
        then pure h
        else pure $! h </> ".config"
