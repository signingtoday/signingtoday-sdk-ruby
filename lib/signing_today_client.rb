=begin
#Signing Today API

#*Signing Today* enables seamless integration of digital signatures into any website by the use of easy requests to our API. This is the smart way of adding digital signature support with a great user experience.   *Signing Today APIs* use HTTP methods and are RESTful based, moreover they are protected by a *server to server authentication* standard by the use of tokens.   *Signing Today APIs* can be used in these environments:   | Environment | Description | Endpoint | | ----------- | ----------- | -------- | | Sandbox     | Test environment | `https://sandbox.signingtoday.com` | | Live        | Production environment | `https://api.signingtoday.com` |   For every single request to Signing Today has to be defined the following *HTTP* header: - `Authorization`, which contains the authentication token.  If the request has a body than another *HTTP* header is requested: - `Content-Type`, with `application/json` value.   Follows an example of usage to enumerate all the user of *my-org* organization.  **Example**  ```json $ curl https://sandbox.signingtoday.com/api/v1/my-org/users \\     -H 'Authorization: Token <access-token>' ```  ## HTTP methods used  APIs use the right HTTP verb in every situation.  | Method   | Description                    | | -------- | ------------------------------ | | `GET`    | Request data from a resource   | | `POST`   | Send data to create a resource | | `PUT`    | Update a resource              | | `PATCH`  | Partially update a resource    | | `DELETE` | Delete a resourse              |   ## Response definition  All the response are in JSON format. As response to a request of all users of an organization you will have a result like this:  ```json {     \"pagination\": {       \"count\": 75,       \"previous\": \"https://sandbox.signingtoday.com/api/v1/my-org/users?page=1\",       \"next\": \"https://sandbox.signingtoday.com/api/v1/my-org/users?page=3\",       \"pages\": 8,       \"page\": 2     },     \"meta\": {       \"code\": 200     },     \"data\": [       {         \"id\": \"jdo\",         \"status\": \"enabled\",         \"type\": \"Basic user account\",         \"email\": johndoe@dummyemail.com,         \"first_name\": \"John\",         \"last_name\": \"Doe\",         \"wallet\": [],         \"created_by\": \"system\",         \"owner\": false,         \"automatic\": false,         \"rao\": false       },       ...     ]   } ```  The JSON of the response is made of three parts: - Pagination - Meta - Data  ### Pagination  *Pagination* object allows to split the response into parts and then to rebuild it sequentially by the use of `next` and `previous` parameters, by which you get previous and following blocks. The *Pagination* is present only if the response is a list of objects.  The general structure of *Pagination* object is the following:  ```json {     \"pagination\": {       \"count\": 75,       \"previous\": \"https://sandbox.signingtoday.com/api/v1/my-org/users?page=1\",       \"next\": \"https://sandbox.signingtoday.com/api/v1/my-org/users?page=3\",       \"pages\": 8,       \"page\": 2     },     ...   } ```  ### Meta  *Meta* object is used to enrich the information about the response. In the previous example, a successful case of response, *Meta* will have value `status: 2XX`. In case of unsuccessful response, *Meta* will have further information, as follows:  ```json {     \"meta\": {       \"code\": <HTTP STATUS CODE>,       \"error_type\": <STATUS CODE DESCRIPTION>,       \"error_message\": <ERROR DESCRIPTION>     }   } ```  ### Data  *Data* object outputs as object or list of them. Contains the expected data as requested to the API.  ## Search filters  Search filters of the API have the following structure:  `where_ATTRIBUTENAME`=`VALUE`  In this way you make a case-sensitive search of *VALUE*. You can extend it through the Django lookup, obtaining more specific filters. For example:  `where_ATTRIBUTENAME__LOOKUP`=`VALUE`  where *LOOKUP* can be replaced with `icontains` to have a partial insensitive research, where  `where_first_name__icontains`=`CHa`  matches with every user that have the *cha* string in their name, with no differences between capital and lower cases.  [Here](https://docs.djangoproject.com/en/1.11/ref/models/querysets/#field-lookups) the list of the lookups.  ## Webhooks  Signing Today supports webhooks for the update of DSTs and identities status. You can choose if to use or not webhooks and if you want to receive updates about DSTs and/or identities. You can configurate it on application token level, in the *webhook* field, as follows:  ```json \"webhooks\": {   \"dst\": \"URL\",   \"identity\": \"URL\"   } ```  ### DSTs status update  DSTs send the following status updates: - **DST_STATUS_CHANGED**: whenever the DST changes its status - **SIGNATURE_STATUS_CHANGED**: whenever one of the signatures changes its status  #### DST_STATUS_CHANGED  Sends the following information:  ```json {     \"message\": \"DST_STATUS_CHANGED\",     \"data\": {       \"status\": \"<DST_STATUS>\",       \"dst\": \"<DST_ID>\",       \"reason\": \"<DST_REASON>\"     }   } ```  #### SIGNATURE_STATUS_CHANGED  Sends the following information:  ```json {     \"message\": \"SIGNATURE_STATUS_CHANGED\",     \"data\": {       \"status\": \"<SIGNATURE_STATUS>\",       \"group\": <MEMBERSHIP_GROUP_INDEX>,       \"dst\": {         \"id\": \"<DST_ID>\",         \"title\": \"<DST_TITLE>\"       },       \"signature\": \"<SIGNATURE_ID>\",       \"signer\": \"<SIGNER_USERNAME>\",       \"position\": \"<SIGNATURE_POSITION>\",       \"document\": {         \"display_name\": \"<DOCUMENT_TITLE>\",         \"id\": \"<DOCUMENT_ID>\",         \"order\": <DOCUMENT_INDEX>       },       \"automatic\": <DECLARES_IF_THE_SIGNER_IS_AUTOMATIC>,       \"page\": \"<SIGNATURE_PAGE>\"     }   } ```  ### Identities status update  Identities send the following status updates: - **IDENTITY_REQUEST_ENROLLED**: whenever an identity request is activated  #### IDENTITY_REQUEST_ENROLLED  Sends the following information:  ```json {     \"message\": \"IDENTITY_REQUEST_ENROLLED\",     \"data\": {       \"status\": \"<REQUEST_STATUS>\",       \"request\": \"<REQUEST_ID>\",       \"user\": \"<APPLICANT_USERNAME>\"     }   } ```  ### Urlback  Sometimes may be necessary to make a redirect after an user, from the signature tray, has completed his operations or activated a certificate.  If set, redirects could happen in 3 cases: - after a signature or decline - after a DST has been signed by all the signers or canceled - after the activation of a certificate  In the first two cases the urlback returns the following information through a data form: - **dst-id**: id of the DST - **dst-url**: signature_ticket of the signature - **dst-status**: current status of the DST - **dst-signature-id**: id of the signature - **dst-signature-status**: current status of the signature - **user**: username of the signer - **decline-reason**: in case of a refused DST contains the reason of the decline  In the last case the urlback returns the following information through a data form: - **user**: username of the user activated the certificate - **identity-provider**: the provider has been used to issue the certificate - **identity-request-id**: id of the enrollment request - **identity-id**: id of the new identity - **identity-label**: the label assigned to the identity - **identity-certificate**: public key of the certificate  ## SUPPORTED Provider  The supported providers are:   - *_aruba_*   - *infocert*   - *namirial*   - *uanataca*  

The version of the OpenAPI document: 1.5.0
Contact: smartcloud@bit4id.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

# Common files
require 'signing_today_client/api_client'
require 'signing_today_client/api_error'
require 'signing_today_client/version'
require 'signing_today_client/configuration'

# Models
require 'signing_today_client/models/automatic_signature'
require 'signing_today_client/models/create_identityby_token'
require 'signing_today_client/models/create_signature_transaction'
require 'signing_today_client/models/create_token'
require 'signing_today_client/models/create_user'
require 'signing_today_client/models/document'
require 'signing_today_client/models/document1'
require 'signing_today_client/models/identity'
require 'signing_today_client/models/identity_actions'
require 'signing_today_client/models/identity_association'
require 'signing_today_client/models/identity_enroll'
require 'signing_today_client/models/identity_enroll_actions'
require 'signing_today_client/models/identity_request'
require 'signing_today_client/models/inline_object'
require 'signing_today_client/models/inline_object1'
require 'signing_today_client/models/inline_object2'
require 'signing_today_client/models/inline_object3'
require 'signing_today_client/models/inline_object4'
require 'signing_today_client/models/inline_object5'
require 'signing_today_client/models/inline_response200'
require 'signing_today_client/models/inline_response2001'
require 'signing_today_client/models/inline_response20010'
require 'signing_today_client/models/inline_response20011'
require 'signing_today_client/models/inline_response20012'
require 'signing_today_client/models/inline_response20013'
require 'signing_today_client/models/inline_response20013_data'
require 'signing_today_client/models/inline_response2002'
require 'signing_today_client/models/inline_response2003'
require 'signing_today_client/models/inline_response2004'
require 'signing_today_client/models/inline_response2005'
require 'signing_today_client/models/inline_response2006'
require 'signing_today_client/models/inline_response2007'
require 'signing_today_client/models/inline_response2008'
require 'signing_today_client/models/inline_response2009'
require 'signing_today_client/models/inline_response2009_meta'
require 'signing_today_client/models/inline_response201'
require 'signing_today_client/models/inline_response2011'
require 'signing_today_client/models/inline_response2012'
require 'signing_today_client/models/inline_response2013'
require 'signing_today_client/models/inline_response2014'
require 'signing_today_client/models/inline_response2014_data'
require 'signing_today_client/models/inline_response2015'
require 'signing_today_client/models/inline_response401'
require 'signing_today_client/models/inline_response403'
require 'signing_today_client/models/inline_response404'
require 'signing_today_client/models/meta_data_error'
require 'signing_today_client/models/meta_data_success'
require 'signing_today_client/models/organization'
require 'signing_today_client/models/organization_settings'
require 'signing_today_client/models/pagination_data'
require 'signing_today_client/models/sms'
require 'signing_today_client/models/signature'
require 'signing_today_client/models/signature_dst'
require 'signing_today_client/models/signature_dst_where'
require 'signing_today_client/models/signature_implementation_response'
require 'signing_today_client/models/signature_implementation_response_channel'
require 'signing_today_client/models/signature_transaction'
require 'signing_today_client/models/signature_where'
require 'signing_today_client/models/signature_where_font'
require 'signing_today_client/models/signature_where_text'
require 'signing_today_client/models/token'
require 'signing_today_client/models/token_http_options'
require 'signing_today_client/models/token_webhooks'
require 'signing_today_client/models/update_organization'
require 'signing_today_client/models/update_token'
require 'signing_today_client/models/update_user'
require 'signing_today_client/models/user'

# APIs
require 'signing_today_client/api/bit4id_pathgroup_identities_api'
require 'signing_today_client/api/bit4id_pathgroup_organizations_api'
require 'signing_today_client/api/bit4id_pathgroup_signature_transactions_api'
require 'signing_today_client/api/bit4id_pathgroup_signatures_api'
require 'signing_today_client/api/bit4id_pathgroup_tokens_api'
require 'signing_today_client/api/bit4id_pathgroup_users_api'
require 'signing_today_client/api/identities_api'
require 'signing_today_client/api/organizations_api'
require 'signing_today_client/api/signature_transactions_api'
require 'signing_today_client/api/signatures_api'
require 'signing_today_client/api/tokens_api'
require 'signing_today_client/api/users_api'

module SigningTodayAPIClient
  class << self
    # Customize default settings for the SDK using block.
    #   SigningTodayAPIClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
