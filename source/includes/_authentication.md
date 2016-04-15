
# Authentication

The Crowdskout API uses the OAuth 2 Authorization Code flow for authentication.

## Obtaining a `client_id` and `client_secret`

Contact your Crowdskout account manager to obtain a `client_id` and `client_secret`, and to provide
them with a `redirect_uri` for your application.

## Obtaining an Authorization Code

Direct the user to the following url for login and authorization:

`https://api.crowdskout.com/oauth/authorize?client_id=abc&redirect_uri=url&response_type=code&state=abc`

Parameter | Value
---- | ----
client_id | The `client_id` provided by your Crowdskout account manager
redirect_uri | Where to redirect the user after authorization; must be provided to account manager
response_type | Must be "code"
state | _Optional;_ Unique identifier to protect against CSRF

After the user logs in an authenticates with a client, they will be redirected to `redirect_uri` with the following parameters:

Parameter | Value
---- | ----
code | Authorization code
state | The `state` passed as a parameter to the authorization url

## Obtaining an Access Token

Use your authorization code to obtain an access token, by making a POST request to the following
url:

`https://api.crowdskout.com/oauth/access_token`

Include the following in the body of your request, as **Content-Type: application/x-www-form-urlencoded**:

Parameter | Value
---- | ----
client_id | The `client_id` provided by your Crowdskout account manager
client_secret | The `client_secret` provided by your Crowdskout account manager
code | The obtained authorization code
redirect_uri | Same `redirect_uri`
grant_type | Must be "authorization_code"

Crowdskout will respond with an `access_token`.

## Using the API

With an `access_token`, you can access the Crowdskout API.

`https://api.crowdskout.com/v1/api-endpoint`

Include the header **Authorization: Bearer _token_** in every request, where _token_ is your obtained
`access_token`.


