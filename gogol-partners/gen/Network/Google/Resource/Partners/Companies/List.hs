{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Partners.Companies.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists companies.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference> for @PartnersCompaniesList@.
module Partners.Companies.List
    (
    -- * REST Resource
      CompaniesListAPI

    -- * Creating a Request
    , companiesList
    , CompaniesList

    -- * Request Lenses
    , clLanguageCodes
    , clXgafv
    , clMaxMonthlyBudgetUnits
    , clQuotaUser
    , clPrettyPrint
    , clUploadProtocol
    , clOrderBy
    , clPp
    , clCompanyName
    , clAccessToken
    , clUploadType
    , clAddress
    , clMinMonthlyBudgetNanos
    , clIndustries
    , clRequestMetadataPartnersSessionId
    , clBearerToken
    , clKey
    , clMaxMonthlyBudgetNanos
    , clRequestMetadataLocale
    , clView
    , clRequestMetadataExperimentIds
    , clRequestMetadataUserOverridesIpAddress
    , clMaxMonthlyBudgetCurrencyCode
    , clWebsiteUrl
    , clPageToken
    , clRequestMetadataTrafficSourceTrafficSubId
    , clOauthToken
    , clGpsMotivations
    , clPageSize
    , clMinMonthlyBudgetCurrencyCode
    , clServices
    , clRequestMetadataUserOverridesUserId
    , clMinMonthlyBudgetUnits
    , clRequestMetadataTrafficSourceTrafficSourceId
    , clFields
    , clCallback
    , clAlt
    ) where

import           Network.Google.Partners.Types
import           Network.Google.Prelude

-- | A resource alias for @PartnersCompaniesList@ which the
-- 'CompaniesList' request conforms to.
type CompaniesListAPI =
     "v2" :>
       "companies" :>
         QueryParams "languageCodes" Text :>
           QueryParam "maxMonthlyBudget.units" Int64 :>
             QueryParam "orderBy" Text :>
               QueryParam "companyName" Text :>
                 QueryParam "address" Text :>
                   QueryParam "minMonthlyBudget.nanos" Int32 :>
                     QueryParams "industries" Text :>
                       QueryParam "requestMetadata.partnersSessionId" Text
                         :>
                         QueryParam "maxMonthlyBudget.nanos" Int32 :>
                           QueryParam "requestMetadata.locale" Text :>
                             QueryParam "view" Text :>
                               QueryParams "requestMetadata.experimentIds" Text
                                 :>
                                 QueryParam
                                   "requestMetadata.userOverrides.ipAddress"
                                   Text
                                   :>
                                   QueryParam "maxMonthlyBudget.currencyCode"
                                     Text
                                     :>
                                     QueryParam "websiteUrl" Text :>
                                       QueryParam "pageToken" Text :>
                                         QueryParam
                                           "requestMetadata.trafficSource.trafficSubId"
                                           Text
                                           :>
                                           QueryParams "gpsMotivations" Text :>
                                             QueryParam "pageSize" Int32 :>
                                               QueryParam
                                                 "minMonthlyBudget.currencyCode"
                                                 Text
                                                 :>
                                                 QueryParams "services" Text :>
                                                   QueryParam
                                                     "requestMetadata.userOverrides.userId"
                                                     Text
                                                     :>
                                                     QueryParam
                                                       "minMonthlyBudget.units"
                                                       Int64
                                                       :>
                                                       QueryParam
                                                         "requestMetadata.trafficSource.trafficSourceId"
                                                         Text
                                                         :>
                                                         Get '[JSON]
                                                           ListCompaniesResponse

-- | Lists companies.
--
-- /See:/ 'companiesList' smart constructor.
data CompaniesList = CompaniesList
    { _clLanguageCodes                               :: !(Maybe Text)
    , _clXgafv                                       :: !(Maybe Text)
    , _clMaxMonthlyBudgetUnits                       :: !(Maybe Int64)
    , _clQuotaUser                                   :: !(Maybe Text)
    , _clPrettyPrint                                 :: !Bool
    , _clUploadProtocol                              :: !(Maybe Text)
    , _clOrderBy                                     :: !(Maybe Text)
    , _clPp                                          :: !Bool
    , _clCompanyName                                 :: !(Maybe Text)
    , _clAccessToken                                 :: !(Maybe Text)
    , _clUploadType                                  :: !(Maybe Text)
    , _clAddress                                     :: !(Maybe Text)
    , _clMinMonthlyBudgetNanos                       :: !(Maybe Int32)
    , _clIndustries                                  :: !(Maybe Text)
    , _clRequestMetadataPartnersSessionId            :: !(Maybe Text)
    , _clBearerToken                                 :: !(Maybe Text)
    , _clKey                                         :: !(Maybe Text)
    , _clMaxMonthlyBudgetNanos                       :: !(Maybe Int32)
    , _clRequestMetadataLocale                       :: !(Maybe Text)
    , _clView                                        :: !(Maybe Text)
    , _clRequestMetadataExperimentIds                :: !(Maybe Text)
    , _clRequestMetadataUserOverridesIpAddress       :: !(Maybe Text)
    , _clMaxMonthlyBudgetCurrencyCode                :: !(Maybe Text)
    , _clWebsiteUrl                                  :: !(Maybe Text)
    , _clPageToken                                   :: !(Maybe Text)
    , _clRequestMetadataTrafficSourceTrafficSubId    :: !(Maybe Text)
    , _clOauthToken                                  :: !(Maybe Text)
    , _clGpsMotivations                              :: !(Maybe Text)
    , _clPageSize                                    :: !(Maybe Int32)
    , _clMinMonthlyBudgetCurrencyCode                :: !(Maybe Text)
    , _clServices                                    :: !(Maybe Text)
    , _clRequestMetadataUserOverridesUserId          :: !(Maybe Text)
    , _clMinMonthlyBudgetUnits                       :: !(Maybe Int64)
    , _clRequestMetadataTrafficSourceTrafficSourceId :: !(Maybe Text)
    , _clFields                                      :: !(Maybe Text)
    , _clCallback                                    :: !(Maybe Text)
    , _clAlt                                         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CompaniesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clLanguageCodes'
--
-- * 'clXgafv'
--
-- * 'clMaxMonthlyBudgetUnits'
--
-- * 'clQuotaUser'
--
-- * 'clPrettyPrint'
--
-- * 'clUploadProtocol'
--
-- * 'clOrderBy'
--
-- * 'clPp'
--
-- * 'clCompanyName'
--
-- * 'clAccessToken'
--
-- * 'clUploadType'
--
-- * 'clAddress'
--
-- * 'clMinMonthlyBudgetNanos'
--
-- * 'clIndustries'
--
-- * 'clRequestMetadataPartnersSessionId'
--
-- * 'clBearerToken'
--
-- * 'clKey'
--
-- * 'clMaxMonthlyBudgetNanos'
--
-- * 'clRequestMetadataLocale'
--
-- * 'clView'
--
-- * 'clRequestMetadataExperimentIds'
--
-- * 'clRequestMetadataUserOverridesIpAddress'
--
-- * 'clMaxMonthlyBudgetCurrencyCode'
--
-- * 'clWebsiteUrl'
--
-- * 'clPageToken'
--
-- * 'clRequestMetadataTrafficSourceTrafficSubId'
--
-- * 'clOauthToken'
--
-- * 'clGpsMotivations'
--
-- * 'clPageSize'
--
-- * 'clMinMonthlyBudgetCurrencyCode'
--
-- * 'clServices'
--
-- * 'clRequestMetadataUserOverridesUserId'
--
-- * 'clMinMonthlyBudgetUnits'
--
-- * 'clRequestMetadataTrafficSourceTrafficSourceId'
--
-- * 'clFields'
--
-- * 'clCallback'
--
-- * 'clAlt'
companiesList
    :: CompaniesList
companiesList =
    CompaniesList
    { _clLanguageCodes = Nothing
    , _clXgafv = Nothing
    , _clMaxMonthlyBudgetUnits = Nothing
    , _clQuotaUser = Nothing
    , _clPrettyPrint = True
    , _clUploadProtocol = Nothing
    , _clOrderBy = Nothing
    , _clPp = True
    , _clCompanyName = Nothing
    , _clAccessToken = Nothing
    , _clUploadType = Nothing
    , _clAddress = Nothing
    , _clMinMonthlyBudgetNanos = Nothing
    , _clIndustries = Nothing
    , _clRequestMetadataPartnersSessionId = Nothing
    , _clBearerToken = Nothing
    , _clKey = Nothing
    , _clMaxMonthlyBudgetNanos = Nothing
    , _clRequestMetadataLocale = Nothing
    , _clView = Nothing
    , _clRequestMetadataExperimentIds = Nothing
    , _clRequestMetadataUserOverridesIpAddress = Nothing
    , _clMaxMonthlyBudgetCurrencyCode = Nothing
    , _clWebsiteUrl = Nothing
    , _clPageToken = Nothing
    , _clRequestMetadataTrafficSourceTrafficSubId = Nothing
    , _clOauthToken = Nothing
    , _clGpsMotivations = Nothing
    , _clPageSize = Nothing
    , _clMinMonthlyBudgetCurrencyCode = Nothing
    , _clServices = Nothing
    , _clRequestMetadataUserOverridesUserId = Nothing
    , _clMinMonthlyBudgetUnits = Nothing
    , _clRequestMetadataTrafficSourceTrafficSourceId = Nothing
    , _clFields = Nothing
    , _clCallback = Nothing
    , _clAlt = "json"
    }

-- | List of language codes that company can support. Only primary language
-- subtags are accepted as defined by BCP 47 (IETF BCP 47, \"Tags for
-- Identifying Languages\").
clLanguageCodes :: Lens' CompaniesList' (Maybe Text)
clLanguageCodes
  = lens _clLanguageCodes
      (\ s a -> s{_clLanguageCodes = a})

-- | V1 error format.
clXgafv :: Lens' CompaniesList' (Maybe Text)
clXgafv = lens _clXgafv (\ s a -> s{_clXgafv = a})

-- | The whole units of the amount. For example if \`currencyCode\` is
-- \`\"USD\"\`, then 1 unit is one US dollar.
clMaxMonthlyBudgetUnits :: Lens' CompaniesList' (Maybe Int64)
clMaxMonthlyBudgetUnits
  = lens _clMaxMonthlyBudgetUnits
      (\ s a -> s{_clMaxMonthlyBudgetUnits = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
clQuotaUser :: Lens' CompaniesList' (Maybe Text)
clQuotaUser
  = lens _clQuotaUser (\ s a -> s{_clQuotaUser = a})

-- | Returns response with indentations and line breaks.
clPrettyPrint :: Lens' CompaniesList' Bool
clPrettyPrint
  = lens _clPrettyPrint
      (\ s a -> s{_clPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
clUploadProtocol :: Lens' CompaniesList' (Maybe Text)
clUploadProtocol
  = lens _clUploadProtocol
      (\ s a -> s{_clUploadProtocol = a})

-- | How to order addresses within the returned companies. Currently, only
-- \`address\` and \`address desc\` is supported which will sorted by
-- closest to farthest in distance from given address and farthest to
-- closest distance from given address respectively.
clOrderBy :: Lens' CompaniesList' (Maybe Text)
clOrderBy
  = lens _clOrderBy (\ s a -> s{_clOrderBy = a})

-- | Pretty-print response.
clPp :: Lens' CompaniesList' Bool
clPp = lens _clPp (\ s a -> s{_clPp = a})

-- | Company name to search for.
clCompanyName :: Lens' CompaniesList' (Maybe Text)
clCompanyName
  = lens _clCompanyName
      (\ s a -> s{_clCompanyName = a})

-- | OAuth access token.
clAccessToken :: Lens' CompaniesList' (Maybe Text)
clAccessToken
  = lens _clAccessToken
      (\ s a -> s{_clAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
clUploadType :: Lens' CompaniesList' (Maybe Text)
clUploadType
  = lens _clUploadType (\ s a -> s{_clUploadType = a})

-- | The address to use when searching for companies. If not given, the
-- geo-located address of the request is used.
clAddress :: Lens' CompaniesList' (Maybe Text)
clAddress
  = lens _clAddress (\ s a -> s{_clAddress = a})

-- | Number of nano (10^-9) units of the amount. The value must be between
-- -999,999,999 and +999,999,999 inclusive. If \`units\` is positive,
-- \`nanos\` must be positive or zero. If \`units\` is zero, \`nanos\` can
-- be positive, zero, or negative. If \`units\` is negative, \`nanos\` must
-- be negative or zero. For example $-1.75 is represented as \`units\`=-1
-- and \`nanos\`=-750,000,000.
clMinMonthlyBudgetNanos :: Lens' CompaniesList' (Maybe Int32)
clMinMonthlyBudgetNanos
  = lens _clMinMonthlyBudgetNanos
      (\ s a -> s{_clMinMonthlyBudgetNanos = a})

-- | List of industries the company can help with.
clIndustries :: Lens' CompaniesList' (Maybe Text)
clIndustries
  = lens _clIndustries (\ s a -> s{_clIndustries = a})

-- | Google Partners session ID.
clRequestMetadataPartnersSessionId :: Lens' CompaniesList' (Maybe Text)
clRequestMetadataPartnersSessionId
  = lens _clRequestMetadataPartnersSessionId
      (\ s a -> s{_clRequestMetadataPartnersSessionId = a})

-- | OAuth bearer token.
clBearerToken :: Lens' CompaniesList' (Maybe Text)
clBearerToken
  = lens _clBearerToken
      (\ s a -> s{_clBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clKey :: Lens' CompaniesList' (Maybe Text)
clKey = lens _clKey (\ s a -> s{_clKey = a})

-- | Number of nano (10^-9) units of the amount. The value must be between
-- -999,999,999 and +999,999,999 inclusive. If \`units\` is positive,
-- \`nanos\` must be positive or zero. If \`units\` is zero, \`nanos\` can
-- be positive, zero, or negative. If \`units\` is negative, \`nanos\` must
-- be negative or zero. For example $-1.75 is represented as \`units\`=-1
-- and \`nanos\`=-750,000,000.
clMaxMonthlyBudgetNanos :: Lens' CompaniesList' (Maybe Int32)
clMaxMonthlyBudgetNanos
  = lens _clMaxMonthlyBudgetNanos
      (\ s a -> s{_clMaxMonthlyBudgetNanos = a})

-- | Locale to use for the current request.
clRequestMetadataLocale :: Lens' CompaniesList' (Maybe Text)
clRequestMetadataLocale
  = lens _clRequestMetadataLocale
      (\ s a -> s{_clRequestMetadataLocale = a})

-- | The view of the \`Company\` resource to be returned. This must not be
-- \`COMPANY_VIEW_UNSPECIFIED\`.
clView :: Lens' CompaniesList' (Maybe Text)
clView = lens _clView (\ s a -> s{_clView = a})

-- | Experiment IDs the current request belongs to.
clRequestMetadataExperimentIds :: Lens' CompaniesList' (Maybe Text)
clRequestMetadataExperimentIds
  = lens _clRequestMetadataExperimentIds
      (\ s a -> s{_clRequestMetadataExperimentIds = a})

-- | IP address to use instead of the user\'s geo-located IP address.
clRequestMetadataUserOverridesIpAddress :: Lens' CompaniesList' (Maybe Text)
clRequestMetadataUserOverridesIpAddress
  = lens _clRequestMetadataUserOverridesIpAddress
      (\ s a ->
         s{_clRequestMetadataUserOverridesIpAddress = a})

-- | The 3-letter currency code defined in ISO 4217.
clMaxMonthlyBudgetCurrencyCode :: Lens' CompaniesList' (Maybe Text)
clMaxMonthlyBudgetCurrencyCode
  = lens _clMaxMonthlyBudgetCurrencyCode
      (\ s a -> s{_clMaxMonthlyBudgetCurrencyCode = a})

-- | Website URL that will help to find a better matched company. .
clWebsiteUrl :: Lens' CompaniesList' (Maybe Text)
clWebsiteUrl
  = lens _clWebsiteUrl (\ s a -> s{_clWebsiteUrl = a})

-- | A token identifying a page of results that the server returns.
-- Typically, this is the value of
-- \`ListCompaniesResponse.next_page_token\` returned from the previous
-- call to ListCompanies.
clPageToken :: Lens' CompaniesList' (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | Second level identifier to indicate where the traffic comes from. An
-- identifier has multiple letters created by a team which redirected the
-- traffic to us.
clRequestMetadataTrafficSourceTrafficSubId :: Lens' CompaniesList' (Maybe Text)
clRequestMetadataTrafficSourceTrafficSubId
  = lens _clRequestMetadataTrafficSourceTrafficSubId
      (\ s a ->
         s{_clRequestMetadataTrafficSourceTrafficSubId = a})

-- | OAuth 2.0 token for the current user.
clOauthToken :: Lens' CompaniesList' (Maybe Text)
clOauthToken
  = lens _clOauthToken (\ s a -> s{_clOauthToken = a})

-- | List of reasons for using Google Partner Search to get companies.
clGpsMotivations :: Lens' CompaniesList' (Maybe Text)
clGpsMotivations
  = lens _clGpsMotivations
      (\ s a -> s{_clGpsMotivations = a})

-- | Requested page size. Server may return fewer companies than requested.
-- If unspecified, server picks an appropriate default.
clPageSize :: Lens' CompaniesList' (Maybe Int32)
clPageSize
  = lens _clPageSize (\ s a -> s{_clPageSize = a})

-- | The 3-letter currency code defined in ISO 4217.
clMinMonthlyBudgetCurrencyCode :: Lens' CompaniesList' (Maybe Text)
clMinMonthlyBudgetCurrencyCode
  = lens _clMinMonthlyBudgetCurrencyCode
      (\ s a -> s{_clMinMonthlyBudgetCurrencyCode = a})

-- | List of services the company can help with.
clServices :: Lens' CompaniesList' (Maybe Text)
clServices
  = lens _clServices (\ s a -> s{_clServices = a})

-- | Logged-in user ID to impersonate instead of the user\'s ID.
clRequestMetadataUserOverridesUserId :: Lens' CompaniesList' (Maybe Text)
clRequestMetadataUserOverridesUserId
  = lens _clRequestMetadataUserOverridesUserId
      (\ s a ->
         s{_clRequestMetadataUserOverridesUserId = a})

-- | The whole units of the amount. For example if \`currencyCode\` is
-- \`\"USD\"\`, then 1 unit is one US dollar.
clMinMonthlyBudgetUnits :: Lens' CompaniesList' (Maybe Int64)
clMinMonthlyBudgetUnits
  = lens _clMinMonthlyBudgetUnits
      (\ s a -> s{_clMinMonthlyBudgetUnits = a})

-- | Identifier to indicate where the traffic comes from. An identifier has
-- multiple letters created by a team which redirected the traffic to us.
clRequestMetadataTrafficSourceTrafficSourceId :: Lens' CompaniesList' (Maybe Text)
clRequestMetadataTrafficSourceTrafficSourceId
  = lens _clRequestMetadataTrafficSourceTrafficSourceId
      (\ s a ->
         s{_clRequestMetadataTrafficSourceTrafficSourceId =
             a})

-- | Selector specifying which fields to include in a partial response.
clFields :: Lens' CompaniesList' (Maybe Text)
clFields = lens _clFields (\ s a -> s{_clFields = a})

-- | JSONP
clCallback :: Lens' CompaniesList' (Maybe Text)
clCallback
  = lens _clCallback (\ s a -> s{_clCallback = a})

-- | Data format for response.
clAlt :: Lens' CompaniesList' Text
clAlt = lens _clAlt (\ s a -> s{_clAlt = a})

instance GoogleRequest CompaniesList' where
        type Rs CompaniesList' = ListCompaniesResponse
        request = requestWithRoute defReq partnersURL
        requestWithRoute r u CompaniesList{..}
          = go _clLanguageCodes _clXgafv
              _clMaxMonthlyBudgetUnits
              _clQuotaUser
              _clPrettyPrint
              _clUploadProtocol
              _clOrderBy
              _clPp
              _clCompanyName
              _clAccessToken
              _clUploadType
              _clAddress
              _clMinMonthlyBudgetNanos
              _clIndustries
              _clRequestMetadataPartnersSessionId
              _clBearerToken
              _clKey
              _clMaxMonthlyBudgetNanos
              _clRequestMetadataLocale
              _clView
              _clRequestMetadataExperimentIds
              _clRequestMetadataUserOverridesIpAddress
              _clMaxMonthlyBudgetCurrencyCode
              _clWebsiteUrl
              _clPageToken
              _clRequestMetadataTrafficSourceTrafficSubId
              _clOauthToken
              _clGpsMotivations
              _clPageSize
              _clMinMonthlyBudgetCurrencyCode
              _clServices
              _clRequestMetadataUserOverridesUserId
              _clMinMonthlyBudgetUnits
              _clRequestMetadataTrafficSourceTrafficSourceId
              _clFields
              _clCallback
              _clAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CompaniesListAPI) r
                      u