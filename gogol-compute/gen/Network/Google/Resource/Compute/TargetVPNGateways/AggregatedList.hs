{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.TargetVPNGateways.AggregatedList
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of target VPN gateways grouped by scope.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetVPNGatewaysAggregatedList@.
module Compute.TargetVPNGateways.AggregatedList
    (
    -- * REST Resource
      TargetVPNGatewaysAggregatedListAPI

    -- * Creating a Request
    , targetVPNGatewaysAggregatedList
    , TargetVPNGatewaysAggregatedList

    -- * Request Lenses
    , tvgalQuotaUser
    , tvgalPrettyPrint
    , tvgalProject
    , tvgalUserIp
    , tvgalKey
    , tvgalFilter
    , tvgalPageToken
    , tvgalOauthToken
    , tvgalMaxResults
    , tvgalFields
    , tvgalAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetVPNGatewaysAggregatedList@ which the
-- 'TargetVPNGatewaysAggregatedList' request conforms to.
type TargetVPNGatewaysAggregatedListAPI =
     Capture "project" Text :>
       "aggregated" :>
         "targetVpnGateways" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 Get '[JSON] TargetVPNGatewayAggregatedList

-- | Retrieves the list of target VPN gateways grouped by scope.
--
-- /See:/ 'targetVPNGatewaysAggregatedList' smart constructor.
data TargetVPNGatewaysAggregatedList = TargetVPNGatewaysAggregatedList
    { _tvgalQuotaUser   :: !(Maybe Text)
    , _tvgalPrettyPrint :: !Bool
    , _tvgalProject     :: !Text
    , _tvgalUserIp      :: !(Maybe Text)
    , _tvgalKey         :: !(Maybe Text)
    , _tvgalFilter      :: !(Maybe Text)
    , _tvgalPageToken   :: !(Maybe Text)
    , _tvgalOauthToken  :: !(Maybe Text)
    , _tvgalMaxResults  :: !Word32
    , _tvgalFields      :: !(Maybe Text)
    , _tvgalAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetVPNGatewaysAggregatedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvgalQuotaUser'
--
-- * 'tvgalPrettyPrint'
--
-- * 'tvgalProject'
--
-- * 'tvgalUserIp'
--
-- * 'tvgalKey'
--
-- * 'tvgalFilter'
--
-- * 'tvgalPageToken'
--
-- * 'tvgalOauthToken'
--
-- * 'tvgalMaxResults'
--
-- * 'tvgalFields'
--
-- * 'tvgalAlt'
targetVPNGatewaysAggregatedList
    :: Text -- ^ 'project'
    -> TargetVPNGatewaysAggregatedList
targetVPNGatewaysAggregatedList pTvgalProject_ =
    TargetVPNGatewaysAggregatedList
    { _tvgalQuotaUser = Nothing
    , _tvgalPrettyPrint = True
    , _tvgalProject = pTvgalProject_
    , _tvgalUserIp = Nothing
    , _tvgalKey = Nothing
    , _tvgalFilter = Nothing
    , _tvgalPageToken = Nothing
    , _tvgalOauthToken = Nothing
    , _tvgalMaxResults = 500
    , _tvgalFields = Nothing
    , _tvgalAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tvgalQuotaUser :: Lens' TargetVPNGatewaysAggregatedList' (Maybe Text)
tvgalQuotaUser
  = lens _tvgalQuotaUser
      (\ s a -> s{_tvgalQuotaUser = a})

-- | Returns response with indentations and line breaks.
tvgalPrettyPrint :: Lens' TargetVPNGatewaysAggregatedList' Bool
tvgalPrettyPrint
  = lens _tvgalPrettyPrint
      (\ s a -> s{_tvgalPrettyPrint = a})

-- | Project ID for this request.
tvgalProject :: Lens' TargetVPNGatewaysAggregatedList' Text
tvgalProject
  = lens _tvgalProject (\ s a -> s{_tvgalProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tvgalUserIp :: Lens' TargetVPNGatewaysAggregatedList' (Maybe Text)
tvgalUserIp
  = lens _tvgalUserIp (\ s a -> s{_tvgalUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tvgalKey :: Lens' TargetVPNGatewaysAggregatedList' (Maybe Text)
tvgalKey = lens _tvgalKey (\ s a -> s{_tvgalKey = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: FIELD_NAME
-- COMPARISON_STRING LITERAL_STRING. The FIELD_NAME is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The COMPARISON_STRING must be either eq
-- (equals) or ne (not equals). The LITERAL_STRING is the string value to
-- filter to. The literal value must be valid for the type of field
-- (string, number, boolean). For string fields, the literal value is
-- interpreted as a regular expression using RE2 syntax. The literal value
-- must match the entire field. For example, filter=name ne
-- example-instance.
tvgalFilter :: Lens' TargetVPNGatewaysAggregatedList' (Maybe Text)
tvgalFilter
  = lens _tvgalFilter (\ s a -> s{_tvgalFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
tvgalPageToken :: Lens' TargetVPNGatewaysAggregatedList' (Maybe Text)
tvgalPageToken
  = lens _tvgalPageToken
      (\ s a -> s{_tvgalPageToken = a})

-- | OAuth 2.0 token for the current user.
tvgalOauthToken :: Lens' TargetVPNGatewaysAggregatedList' (Maybe Text)
tvgalOauthToken
  = lens _tvgalOauthToken
      (\ s a -> s{_tvgalOauthToken = a})

-- | Maximum count of results to be returned.
tvgalMaxResults :: Lens' TargetVPNGatewaysAggregatedList' Word32
tvgalMaxResults
  = lens _tvgalMaxResults
      (\ s a -> s{_tvgalMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tvgalFields :: Lens' TargetVPNGatewaysAggregatedList' (Maybe Text)
tvgalFields
  = lens _tvgalFields (\ s a -> s{_tvgalFields = a})

-- | Data format for the response.
tvgalAlt :: Lens' TargetVPNGatewaysAggregatedList' Text
tvgalAlt = lens _tvgalAlt (\ s a -> s{_tvgalAlt = a})

instance GoogleRequest
         TargetVPNGatewaysAggregatedList' where
        type Rs TargetVPNGatewaysAggregatedList' =
             TargetVPNGatewayAggregatedList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u
          TargetVPNGatewaysAggregatedList{..}
          = go _tvgalQuotaUser _tvgalPrettyPrint _tvgalProject
              _tvgalUserIp
              _tvgalKey
              _tvgalFilter
              _tvgalPageToken
              _tvgalOauthToken
              (Just _tvgalMaxResults)
              _tvgalFields
              _tvgalAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetVPNGatewaysAggregatedListAPI)
                      r
                      u