{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Dataflow.Projects.Jobs.GetMetrics
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Request the job status.
--
-- /See:/ <https://cloud.google.com/dataflow Google Dataflow API Reference> for @DataflowProjectsJobsGetMetrics@.
module Dataflow.Projects.Jobs.GetMetrics
    (
    -- * REST Resource
      ProjectsJobsGetMetricsAPI

    -- * Creating a Request
    , projectsJobsGetMetrics
    , ProjectsJobsGetMetrics

    -- * Request Lenses
    , pjgmXgafv
    , pjgmQuotaUser
    , pjgmPrettyPrint
    , pjgmJobId
    , pjgmUploadProtocol
    , pjgmStartTime
    , pjgmPp
    , pjgmAccessToken
    , pjgmUploadType
    , pjgmBearerToken
    , pjgmKey
    , pjgmProjectId
    , pjgmOauthToken
    , pjgmFields
    , pjgmCallback
    , pjgmAlt
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @DataflowProjectsJobsGetMetrics@ which the
-- 'ProjectsJobsGetMetrics' request conforms to.
type ProjectsJobsGetMetricsAPI =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "jobs" :>
             Capture "jobId" Text :>
               "metrics" :>
                 QueryParam "startTime" Text :> Get '[JSON] JobMetrics

-- | Request the job status.
--
-- /See:/ 'projectsJobsGetMetrics' smart constructor.
data ProjectsJobsGetMetrics = ProjectsJobsGetMetrics
    { _pjgmXgafv          :: !(Maybe Text)
    , _pjgmQuotaUser      :: !(Maybe Text)
    , _pjgmPrettyPrint    :: !Bool
    , _pjgmJobId          :: !Text
    , _pjgmUploadProtocol :: !(Maybe Text)
    , _pjgmStartTime      :: !(Maybe Text)
    , _pjgmPp             :: !Bool
    , _pjgmAccessToken    :: !(Maybe Text)
    , _pjgmUploadType     :: !(Maybe Text)
    , _pjgmBearerToken    :: !(Maybe Text)
    , _pjgmKey            :: !(Maybe Text)
    , _pjgmProjectId      :: !Text
    , _pjgmOauthToken     :: !(Maybe Text)
    , _pjgmFields         :: !(Maybe Text)
    , _pjgmCallback       :: !(Maybe Text)
    , _pjgmAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsJobsGetMetrics'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjgmXgafv'
--
-- * 'pjgmQuotaUser'
--
-- * 'pjgmPrettyPrint'
--
-- * 'pjgmJobId'
--
-- * 'pjgmUploadProtocol'
--
-- * 'pjgmStartTime'
--
-- * 'pjgmPp'
--
-- * 'pjgmAccessToken'
--
-- * 'pjgmUploadType'
--
-- * 'pjgmBearerToken'
--
-- * 'pjgmKey'
--
-- * 'pjgmProjectId'
--
-- * 'pjgmOauthToken'
--
-- * 'pjgmFields'
--
-- * 'pjgmCallback'
--
-- * 'pjgmAlt'
projectsJobsGetMetrics
    :: Text -- ^ 'jobId'
    -> Text -- ^ 'projectId'
    -> ProjectsJobsGetMetrics
projectsJobsGetMetrics pPjgmJobId_ pPjgmProjectId_ =
    ProjectsJobsGetMetrics
    { _pjgmXgafv = Nothing
    , _pjgmQuotaUser = Nothing
    , _pjgmPrettyPrint = True
    , _pjgmJobId = pPjgmJobId_
    , _pjgmUploadProtocol = Nothing
    , _pjgmStartTime = Nothing
    , _pjgmPp = True
    , _pjgmAccessToken = Nothing
    , _pjgmUploadType = Nothing
    , _pjgmBearerToken = Nothing
    , _pjgmKey = Nothing
    , _pjgmProjectId = pPjgmProjectId_
    , _pjgmOauthToken = Nothing
    , _pjgmFields = Nothing
    , _pjgmCallback = Nothing
    , _pjgmAlt = "json"
    }

-- | V1 error format.
pjgmXgafv :: Lens' ProjectsJobsGetMetrics' (Maybe Text)
pjgmXgafv
  = lens _pjgmXgafv (\ s a -> s{_pjgmXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pjgmQuotaUser :: Lens' ProjectsJobsGetMetrics' (Maybe Text)
pjgmQuotaUser
  = lens _pjgmQuotaUser
      (\ s a -> s{_pjgmQuotaUser = a})

-- | Returns response with indentations and line breaks.
pjgmPrettyPrint :: Lens' ProjectsJobsGetMetrics' Bool
pjgmPrettyPrint
  = lens _pjgmPrettyPrint
      (\ s a -> s{_pjgmPrettyPrint = a})

-- | The job to get messages for.
pjgmJobId :: Lens' ProjectsJobsGetMetrics' Text
pjgmJobId
  = lens _pjgmJobId (\ s a -> s{_pjgmJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjgmUploadProtocol :: Lens' ProjectsJobsGetMetrics' (Maybe Text)
pjgmUploadProtocol
  = lens _pjgmUploadProtocol
      (\ s a -> s{_pjgmUploadProtocol = a})

-- | Return only metric data that has changed since this time. Default is to
-- return all information about all metrics for the job.
pjgmStartTime :: Lens' ProjectsJobsGetMetrics' (Maybe Text)
pjgmStartTime
  = lens _pjgmStartTime
      (\ s a -> s{_pjgmStartTime = a})

-- | Pretty-print response.
pjgmPp :: Lens' ProjectsJobsGetMetrics' Bool
pjgmPp = lens _pjgmPp (\ s a -> s{_pjgmPp = a})

-- | OAuth access token.
pjgmAccessToken :: Lens' ProjectsJobsGetMetrics' (Maybe Text)
pjgmAccessToken
  = lens _pjgmAccessToken
      (\ s a -> s{_pjgmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjgmUploadType :: Lens' ProjectsJobsGetMetrics' (Maybe Text)
pjgmUploadType
  = lens _pjgmUploadType
      (\ s a -> s{_pjgmUploadType = a})

-- | OAuth bearer token.
pjgmBearerToken :: Lens' ProjectsJobsGetMetrics' (Maybe Text)
pjgmBearerToken
  = lens _pjgmBearerToken
      (\ s a -> s{_pjgmBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pjgmKey :: Lens' ProjectsJobsGetMetrics' (Maybe Text)
pjgmKey = lens _pjgmKey (\ s a -> s{_pjgmKey = a})

-- | A project id.
pjgmProjectId :: Lens' ProjectsJobsGetMetrics' Text
pjgmProjectId
  = lens _pjgmProjectId
      (\ s a -> s{_pjgmProjectId = a})

-- | OAuth 2.0 token for the current user.
pjgmOauthToken :: Lens' ProjectsJobsGetMetrics' (Maybe Text)
pjgmOauthToken
  = lens _pjgmOauthToken
      (\ s a -> s{_pjgmOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pjgmFields :: Lens' ProjectsJobsGetMetrics' (Maybe Text)
pjgmFields
  = lens _pjgmFields (\ s a -> s{_pjgmFields = a})

-- | JSONP
pjgmCallback :: Lens' ProjectsJobsGetMetrics' (Maybe Text)
pjgmCallback
  = lens _pjgmCallback (\ s a -> s{_pjgmCallback = a})

-- | Data format for response.
pjgmAlt :: Lens' ProjectsJobsGetMetrics' Text
pjgmAlt = lens _pjgmAlt (\ s a -> s{_pjgmAlt = a})

instance GoogleRequest ProjectsJobsGetMetrics' where
        type Rs ProjectsJobsGetMetrics' = JobMetrics
        request = requestWithRoute defReq dataflowURL
        requestWithRoute r u ProjectsJobsGetMetrics{..}
          = go _pjgmXgafv _pjgmQuotaUser _pjgmPrettyPrint
              _pjgmJobId
              _pjgmUploadProtocol
              _pjgmStartTime
              _pjgmPp
              _pjgmAccessToken
              _pjgmUploadType
              _pjgmBearerToken
              _pjgmKey
              _pjgmProjectId
              _pjgmOauthToken
              _pjgmFields
              _pjgmCallback
              _pjgmAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsJobsGetMetricsAPI)
                      r
                      u