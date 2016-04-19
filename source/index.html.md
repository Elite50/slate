---
title: Crowdskout API Reference

language_tabs:
  - shell

toc_footers:
  - <a href='#'>Sign Up for a Developer Key</a>

includes:
  - profile-object
  - errors

search: true
---

# Introduction

Welcome to the Crowdskout API. You can use the API to read and write profile data in Crowdskout. This documentation covers
version 1 of the API and after authenticating, all endpoints reside under `https://api.crowdskout.com/v1`.

# Authentication

The Crowdskout API uses the [OAuth 2.0](https://tools.ietf.org/html/rfc6749) Authorization Code flow for authentication.

## Obtaining a `client_id` and `client_secret`

Contact your Crowdskout community manager to obtain a `client_id` and `client_secret`, and to provide
them with a `redirect_uri` for your application.

## Obtaining an Authorization Code

Direct the user to the following URL for a login form:

`https://api.crowdskout.com/oauth/authorize?client_id={client_id}&redirect_uri={redirect_url}&response_type=code&state={state}`

Parameter|Required?|Description
---------|---------|-----------
client_id|Yes|The `client_id` provided by your Crowdskout account manager
redirect_uri|Yes|Where to redirect the user after authorization; must be provided to account manager
response_type|Yes|Must always be `code`
state|No|Unique identifier to protect against CSRF

After the user logs in an authenticates with a client, they will be redirected to `redirect_uri` with the following
query parameters:

Parameter|Description
---------|-----
code|Authorization code
state|The `state` passed as a parameter to the authorization URL, check this against what you provided to protect against CSRF

## Obtaining an Access Token

>Request

```
client_id=abcd1234&client_secret=abcd1234&code=abcd1234&redirect_uri=http%3A%2F%2Fcrowdskout.com&grant_type=authorization_code
```

>Response

``` json
{
  "access_token" : "abcd1234",
  "token_type" : "Bearer",
  "expires_in" : 315360000
}
```

`POST https://api.crowdskout.com/oauth/access_token`

Use your authorization code to obtain an access token. Include the following in the body of your request,
as **Content-Type: application/x-www-form-urlencoded**:

Parameter|Required?|Description
---------|---------|-----------
client_id|Yes|The `client_id` provided by your Crowdskout account manager
client_secret|Yes|The `client_secret` provided by your Crowdskout account manager
code|Yes|The obtained authorization code
redirect_uri|Yes|Same `redirect_uri`
grant_type|Yes|Must be `authorization_code`

Crowdskout will respond with an `access_token`.

## Using the API

With an `access_token`, you can access the Crowdskout API. After acquiring a token, include the header
**Authorization: Bearer {token}** in every request, where {token} is your obtained `access_token`.

# Profile
These endpoints allow you to retrieve and update profile information in Crowdskout either individually or in bulk.

## Get a Profile by ID

`GET https://api.crowdskout.com/v1/profile/{id}?collections={collections}`

You can retrieve a profile by ID and a comma-delimited list of collections. The profile will be returned as the [Profile Object](#the-profile-object).

Parameter|Required?|Description|Example
---------|---------|-----------|-------
id|Yes|The profile ID we want to retrieve|`1`
collections|Yes|A comma-delimited list of collections to include|`Names,EmailAddresses,Ages`

## Create a Profile

`POST https://api.crowdskout.com/v1/profile`

You can create a profile by sending the [Profile Object](#the-profile-object) in the request body. All IDs will be
ignored in the object and all collection items will be created anew. The endpoint will return the
[Profile Object](#the-profile-object) with all of the IDs attached to the object and its collection items. If an item
is provided with insufficient or invalid information, that item will be removed from the collection silently, and the
rest of the valid data will be saved.
 
Parameter|Required?|Description|Example
---------|---------|-----------|-------
profile|Yes|The profile to create|See the [Profile Object](#the-profile-object) documentation

## Create Many Profiles

`POST https://api.crowdskout.com/v1/profile/bulk`

You can create many profiles by sending an array of [Profile Objects](#the-profile-object) in the request body. Similar
to the single create endpoint, it ignores all IDs in the request and returns an array of the same profile objects passed
in with IDs appended to the profile and the collection items. Any invalid items will be silently ignored and not present
in the response.

Parameter|Required?|Description|Example
---------|---------|-----------|-------
profiles|Yes|The array of profiles to create|See the [Profile Object](#the-profile-object) documentation

## Update a Profile by ID

`PUT https://api.crowdskout.com/v1/profile/{id}`

You can update a single profile by sending the [Profile Object](#the-profile-object). Collection items with IDs will be
updated with the information provided.

To add an item to a profile, provide the item in the appropriate collection in the profile object, with either
`"id" : 0` or no `id` field at all.

To delete an item in a collection, provide the item as normal in the collection with an ID, and add `"delete":true` to
the item. All other fields in that item besides `id` and `delete` will be ignored.

Parameter|Required?|Description|Example
---------|---------|-----------|-------
id|Yes|The ID of the profile object to update|`1`
profile|Yes|The profile object to update|See the [Profile Object](#the-profile-object) documentation

## Update Many Profiles

`PUT https://api.crowdskout.com/v1/profile/bulk`

You can update many profiles by sending an array of [Profile Objects](#the-profile-object) with an ID on each object in
the request body. Collection items with IDs will be updated using the information provided.

To add an item to a profile, provide the item in the appropriate collection in the profile object, with either
`"id" : 0` or no `id` field at all.

To delete an item in a collection, provide the item as normal in the collection with an ID, and add `"delete":true` to
the item. All other fields in that item besides `id` and `delete` will be ignored.

Parameter|Required?|Description|Example
---------|---------|-----------|-------
profile|Yes|The profile objects to update, requires an `id` on each object|See the [Profile Object](#the-profile-object) documentation

# Fields

## Get the Options for a Field

>Response

``` json
{
  "success" : true,
  "messages" : [],
  "data" : {
    "collection" : "PhysicalAddresses",
    "options" : [
      {
        "id" : 1,
        "value" : "Chicago"
      },
      {
        "id" : 2,
        "value" : "Springfield"
      }
    ]
  }
}
```

`GET https://api.crowdskout.com/v1/fields/{field}/options?{dependencyName}={dependencyId}`

Retrieves all the available options for the provided field. This returns an object with the name of the collection of
the provided field and an array of options. These options are not always an exclusive list and many fields let you
provide a new value when updating or creating a profile.

Parameter|Required?|Description|Example
---------|---------|-----------|-------
field|Yes|The name of the field to retrieve options for|`AddressCity`
dependencyName|No|The field name of the supplied field's parent to filter options|`AddressRegion`
dependencyId|No|The ID of a value in the `dependencyName` options that we want to filter options on|`14`

# Attributes

## Get All Attributes

`GET https://api.crowdskout.com/v1/attribute?limit={limit}&offset={offset}`

Retrieves all of the attributes for the client. An offset and limit can be passed in to page through results.

Parameter|Required?|Description|Example
---------|---------|-----------|-------
limit|No|The number of attributes to limit our return to|`50`
offset|No|The number of attributes to skip when fetching attributes|`0`

## Get an Attribute by ID

`GET https://api.crowdskout.com/v1/attribute/{id}`

Retrieves a single attribute for the client.

Parameter|Required?|Description|Example
---------|---------|-----------|-------
id|Yes|The ID of the attribute to retrieve|`1`


## Create an Attribute

> Request

``` json
{
  "name" : "Test Attribute",
  "type" : "Radio",
  "options" : [
    {
      "value" : "Option 1"
    },
    {
      "value" : "Option 2"
    }
  ]
}
```

> Response

``` json
{
  "success" : true,
  "messages" : [],
  "data" : {
     "id" : 1,
     "name" : "Test Attribute",
     "type" : "Radio",
     "locked" : false,
     "options" : [
       {
         "id" : 1,
         "value" : "Option 1"
       },
       {
         "id" : 2,
         "value" : "Option 2"
       }
     ]
   }
}
```

`POST https://api.crowdskout.com/v1/attribute`

Creates an attribute for the client. Takes a number of parameters in the body of the request.

Parameter|Required?|Description|Example
---------|---------|-----------|-------
name|Yes|The name of the attribute we're creating|`Test Attribute`
type|Yes|The type of attribute we're creating|Must be one of: `Radio`, `Checkbox`, `Text`, `Number`, `Tag`, `Date`, `Datetime`
options|Sometimes|An array of options for the attribute, required if the supplied type is `Radio` or `Checkbox`|See sidebar

## Update an Attribute

> Request

``` json
{
  "name" : "Test Attribute 2",
  "options" : [
    {
      "id" : 1,
      "value" : "Option 3"
    },
    {
      "id" : 2,
      "delete" : true,
      "value" : "Option 2"
    },
    {
      "id" : 0,
      "value" : "Option 4"
    }
  ]
}
```

> Response

``` json
{
  "success" : true,
  "messages" : [],
  "data" : {
    "id" : 1,
    "name" : "Test Attribute 2",
    "type" : "Radio",
    "locked" : false,
    "options" : [
      {
        "id" : 1,
        "value" : "Option 3"
      },
      {
        "id" : 3,
        "value" : "Option 4"
      }
    ]
  }
}
```

`PUT https://api.crowdskout.com/v1/attribute/{id}`

Updates an attribute for the client with the provided ID. Takes a number of parameters in the body of the request. The
type of an attribute cannot be changed. In the options array provided, any options with an ID will have their value
updated. Any options with `"id" : 0` or no `id` field will be added. Any options with `"delete" : true` will be deleted.

Parameter|Required?|Description|Example
---------|---------|-----------|-------
name|No|The name we want to set the attribute to|`Test Attribute 2`
options|No|A set of options we want to update|See sidebar

## Delete an Attribute

>Response

``` json
{
  "success" : true,
  "messages" : [],
  "data" : {}
}
```

`DELETE https://api.crowdskout.com/v1/attribute/{id}`

Deletes an attribute with the provided ID.

Parameter|Required?|Description|Example
---------|---------|-----------|-------
id|Yes|The ID of the attribute to delete|`1`
