---
title: Crowdskout | API Reference

language_tabs:
  - http

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

## Obtaining a Client ID and Client Secret

Contact a Crowdskout community manager to obtain a `client_id` and `client_secret`, and to provide
them with a `redirect_uri` for your application.

## Obtaining an Authorization Code

Direct the user to the following URL for a login form:

`https://api.crowdskout.com/oauth/authorize?client_id={client_id}&redirect_uri={redirect_url}&response_type=code&state={state}`

Parameter|Required?|Description
---------|---------|-----------
client_id|Yes|The `client_id` provided by a community manager
redirect_uri|Yes|Where to redirect the user after authorization; must be the same as you provided to a community manager
response_type|Yes|Must always be `code`
state|No|Unique identifier to protect against CSRF

After the user logs in an authenticates with a client, they will be redirected to `redirect_uri` with the following
query parameters:

Parameter|Description
---------|-----
code|Authorization code
state|The `state` passed as a parameter to the authorization URL, check this against what you provided to protect against CSRF

## Obtaining an Access Token

```http
POST /oauth/access_token HTTP/1.1
Accept: application/json
Content-Type: application/x-www-form-urlencoded

client_id=abcd1234&client_secret=abcd1234&code=abcd1234&redirect_uri=http%3A%2F%2Fcrowdskout.com&grant_type=authorization_code
```

```http
HTTP/1.1 200 OK
Content-Type: application/json

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
client_id|Yes|The `client_id` provided by a community manager
client_secret|Yes|The `client_secret` provided by a community manager
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

```http
GET /v1/profile/1?collections=Names,Genders HTTP/1.1
Accept: application/json
Authorization: Bearer abcd1234
```

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "success" : true,
  "messages" : [],
  "data" : {
    "id" : 1,
    "Names" : [
      {
        "id" : 1,
        "FullName" : "Mr. Ferdinand Magellan",
        "NameTitle" : "Mr.",
        "FirstName" : "Ferdinand",
        "MiddleName" : null,
        "LastName" : "Magellan",
        "NameSuffix" : null
      }
    ],
    "Genders" : [
      {
        "id" : 1,
        "Gender" : {
          "id" : 1,
          "value" : "Male"
        }
      }
    ]
  }
}
```

`GET https://api.crowdskout.com/v1/profile/{id}?collections={collections}`

You can retrieve a profile by ID and a comma-delimited list of collections. The profile will be returned as the [Profile Object](#the-profile-object).

Parameter|Required?|Description
---------|---------|-----------
id|Yes|The profile ID we want to retrieve
collections|Yes|A comma-delimited list of collections to include

This endpoint supports sorting, filtering and limiting of the results.

### Sorting
To sort the results inside a collection, provide `{collectionName}_sort` as a parameter, and `{+/-}{collectionField}` as a value.
\+ for ASC, \- for DESC. You can provide more than one collection field to use for secondary sorting.

If -/+ is not provided, the sorting will default to + and sort in ascending order on the given field.

For example:
`Knocks_sort=-KnockWhen,+KnockDayTrip_value` will sort knocks results from most recent to the oldest, and will also sort according to ascending order of KnockDayTrip values.

### Filtering
To filter the results inside a collection, provide `{collectionName}_{collectionField}_{collectionSubField}` as a parameter, and the value you filter on as the value of the parameter.

For example: 
`Knocks_KnockDayTrip_id=wills-day-trip` will only return knocks where KnockDayTrip id is 'wills-day-trip'.


### Limiting
To limit the results inside a collection, provide `{collectionName}_limit` as a parameter and an integer as a value.

For example:
`Knocks_limit=1` will only return one first knock. 

You can use it in combination with sorting, for example, `Knocks_sort=-KnockWhen&Knocks_limit=1` will return the most recent knock.


## Get a Profile by External ID

```http
GET /v1/external-id/abcd1234/Mailchimp%20ID HTTP/1.1
Accept: application/json
Authorization: Bearer abcd1234
```

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "success": true,
  "messages": [],
  "data": {
    "ids": [1,2]
  }
}
```

`GET https://api.crowdskout.com/v1/external-id/{externalId}/{externalIdType}`

You can retrieve an array of profile IDs with a specific External ID by providing the ID and a type.

Parameter|Required?|Description
---------|---------|-----------
externalId|Yes|The value of the external ID we're looking up profile IDs for
externalIdType|Yes|The type of the external ID we're looking up 

## Create a Profile

```http
POST /v1/profile HTTP/1.1
Accept: application/json
Authorization: Bearer abcd1234
Content-Type: application/json

{
  "profile" : {
    "Names" : [
      {
        "FullName" : "Ferdinand Magellan"
      }
    ]
  }
}
```

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "success" : true,
  "messages" : [],
  "data" : {
    "id" : 1,
    "Names" : [
      {
        "id" : 1,
        "FullName" : "Ferdinand Magellan",
        "NameTitle" : null,
        "FirstName" : "Ferdinand",
        "MiddleName" : null,
        "LastName" : "Magellan",
        "NameSuffix" : null
      }
    ]
  }
}
```

`POST https://api.crowdskout.com/v1/profile`

You can create a profile by sending the [Profile Object](#the-profile-object) in the request body. All IDs will be
ignored in the object and all collection items will be created anew. The endpoint will return the
[Profile Object](#the-profile-object) with all of the IDs attached to the object and its collection items. If an item
is provided with insufficient or invalid information, that item will be removed from the collection silently, and the
rest of the valid data will be saved.
 
Parameter|Required?|Description
---------|---------|-----------
profile|Yes|The profile to create

## Create Many Profiles

```http
POST /v1/profile/bulk HTTP/1.1
Accept: application/json
Authorization: Bearer abcd1234
Content-Type: application/json

{
  "profiles" : [
    {
      "Genders" : [
        {
          "Gender" : {
            "value" : "Male"
          }
        }
      ]
    },
    {
      "Genders" : [
        {
          "Gender" : {
            "value" : "Female"
          }
        }
      ]
    }  
  ]
}
```

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "success" : true,
  "messages" : [],
  "data" : [
    {
      "id" : 1,
      "Genders" : [
        {
          "id" : 1,
          "Gender" : {
            "id" : 1,
            "value" : "Male"
          }
        }
      ]
    },
    {
      "id" : 2,
      "Genders" : [
        {
          "id" : 2,
          "Gender" : {
            "id" : 2,
            "value" : "Female"
          }
        }
      ]
    }  
  ]
}
```

`POST https://api.crowdskout.com/v1/profile/bulk`

You can create many profiles by sending an array of [Profile Objects](#the-profile-object) in the request body. Similar
to the single create endpoint, it ignores all IDs in the request and returns an array of the same profile objects passed
in with IDs appended to the profile and the collection items. Any invalid items will be silently ignored and not present
in the response.

Parameter|Required?|Description
---------|---------|-----------
profiles|Yes|The array of profiles to create

## Update a Profile by ID

```http
PUT /v1/profile/1 HTTP/1.1
Accept: application/json
Authorization: Bearer abcd1234
Content-Type: application/json

{
  "profile" : {
    "id" : 1,
    "Names" : [
      {
        "id" : 1,
        "FirstName" : "Ferdinand"
      },
      {
        "id" : 2,
        "delete" : true
      },
      {
        "id" : 0,
        "FullName" : "F Magellan"
      }
    ]
  }
}
```

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "success" : true,
  "messages" : [],
  "data" : {
    "id" : 1,
    "Names" : [
      {
        "id" : 1,
        "FullName" : "Ferdinand Magellan",
        "NameTitle" : null,
        "FirstName" : "Ferdinand",
        "MiddleName" : null,
        "LastName" : "Magellan",
        "NameSuffix" : null
      },
      {
        "id" : 3,
        "FullName" : "F Magellan",
        "NameTitle" : null,
        "FirstName" : "F",
        "MiddleName" : null,
        "LastName" : "Magellan",
        "NameSuffix" : null
      }
    ]
  }
}
```

`PUT https://api.crowdskout.com/v1/profile/{id}`

You can update a single profile by sending the [Profile Object](#the-profile-object). Collection items with IDs will be
updated with the information provided.

To add an item to a profile, provide the item in the appropriate collection in the profile object, with either
`"id" : 0` or no `id` field at all.

To delete an item in a collection, provide the item as normal in the collection with an ID, and add `"delete":true` to
the item. All other fields in that item besides `id` and `delete` will be ignored.

Parameter|Required?|Description
---------|---------|-----------
id|Yes|The ID of the profile object to update
profile|Yes|The profile object to update

## Update Many Profiles

```http
PUT /v1/profile/bulk HTTP/1.1
Accept: application/json
Authorization: Bearer abcd1234
Content-Type: application/json

{
  "profiles" : [
    {
      "id" : 1,
      "Names" : [
        {
          "id" : 1,
          "FirstName" : "Fernão"
        },
        {
          "id" : 3,
          "delete" : true
        }
      ]
    },
    {
      "id" : 2,
      "Names" : [
        {
          "id" : 4,
          "delete" : true
        }
      ]
    }
  ]
}
```

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "success" : true,
  "messages" : [],
  "data" : [
    {
      "id" : 1,
      "Names" : [
        {
          "id" : 1,
          "FullName" : "Fernão Magellan",
          "NameTitle" : null,
          "FirstName" : "Fernão",
          "MiddleName" : null,
          "LastName" : "Magellan",
          "NameSuffix" : null
        }
      ]
    },
    {
      "id" : 2,
      "Names" : []
    }
  ]
}
```

`PUT https://api.crowdskout.com/v1/profile/bulk`

You can update many profiles by sending an array of [Profile Objects](#the-profile-object) with an ID on each object in
the request body. Collection items with IDs will be updated using the information provided.

To add an item to a profile, provide the item in the appropriate collection in the profile object, with either
`"id" : 0` or no `id` field at all.

To delete an item in a collection, provide the item as normal in the collection with an ID, and add `"delete":true` to
the item. All other fields in that item besides `id` and `delete` will be ignored.

Parameter|Required?|Description
---------|---------|-----------
profile|Yes|The profile objects to update, requires an `id` on each object

## Check for a Non-Match

```http
POST /v1/profile/1/non-match-check HTTP/1.1
Accept: application/json
Authorization: Bearer abcd1234
Content-Type: application/json

{
  "profile" : {
    "Names" : [
      {
        "FirstName" : "Fernão"
      }
    ],
    "EmailAddresses" : [
      {
        "Email" : "fernao@circumnavigation.net"
      }
    ]
  }
}
```

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "success" : true,
  "messages" : [],
  "data" : true
}
```

`POST https://api.crowdskout.com/v1/profile/{id}/non-match-check`

You can check if a supplied profile object definitely is not the same profile as the supplied profile ID. This endpoint
can be a little confusing, because its purpose is to determine a definite non-match, but does not necessarily indicate a match.
 
The use of this endpoint is for situations when you have a profile object you think belongs to a profile ID, but cannot be sure.
By running the non-match check, you can avoid situations where you're adding new people to existing profile records of
different people.

**The endpoint returns `true` if the supplied profile is definitely not a match, and returns `false` otherwise.** 

Parameter|Required?|Description
---------|---------|-----------
profile|Yes|The [Profile Object](#the-profile-object) to check against

# Segment

## Scan & Scroll a Segment
```http
PUT /v1/segment/scan?query=(NameExists%20%3D%20%22Yes%22)&token=abcd1234 HTTP/1.1
Accept: application/json
Authorization: Bearer abcd1234
Content-Type:application/json
```

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
	"success": true,
	"messages": [],
	"data": {
		"scrollId": "abcd1234",
		"profileIds": [1,2,3],
		"total": 100
	}
}
```

`PUT https://api.crowdskout.com/v1/segment/scan?query={query}&token={token}`

This endpoint works two different ways depending on whether or not a `token` parameter is provided. If the
parameter is not provided, this endpoint starts a new scan using the provided query. If the parameter is provided,
this endpoint will get the next collection of profiles in the initiated scroll.

This endpoint should be used when you want to get every profile in a particular segment. An initial request should
be made without providing a `token`. The response will contain the first batch of profile IDs and a `scrollId`.
The `scrollId` should be provided in subsequent requests as the `token` parameter and another batch of profile IDs
will be returned. This request can be made continuously until the `profileIds` array is empty. The set of
returned profile IDs across all requests in the same scroll is guaranteed to be unique.

Please note that there is a duration of sixty minutes for a scroll, and if no request is made with the token in
sixty minutes, the scroll will be deleted. Any subsequent requests with the token will return an empty set of `profileIds`.

Parameter|Required?|Description
---------|---------|-----------
query|yes|The CQL query that forms the segment
token|no|The scroll ID that is used from a previous run to keep getting new profiles

# Traits

## Get audience breakdown by traits

```http
POST /v1/traits HTTP/1.1
Accept: application/json
Authorization: Bearer abcd1234
Content-Type: application/json

{
	"query": "(Gender = \"Female\")",
	"profiles": [
		1,
		2,
		3
	],
	"traits": [
		{
			"trait": "City",
			"value": "Silver Spring",
			"dependencies": {
				"State": "Maryland"
			},
			"options": {
				"startDateTime": "2015-08-14T08:00:00-05:00",
				"endDateTime": "2015-08-15T08:00:00-05:00",
				"timeseries": {
					"interval": "day",
					"timezoneOffset": -5,
					"dayOfWeekOffset": 0
				},
				"sum": true,
				"ranges": [
					[10, "*"],
					[11, 21]
				],
				"drillDown": true,
				"unknown": true,
				"profileCount": true
			},
			"dimensions": [
				{
					"trait": "Gender"
				}
			]
		}
	]
}
```

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
	"success": true,
	"messages": [],
	"data": {
		"total": 554,
		"data": {
			"2016-02-01T00:00:00-05:00": {
				"total": 139,
				"options": {
					"Debrief": "",
					"Escalation": "",
					"Introduction": "",
					"Maintenance": ""
				}
			}
		}
	}
}
```

`POST https://api.crowdskout.com/v1/traits`

This endpoint takes a wide variety of options in the request body, most of which are optional.

Property|Required?|Description
---------|---------|-----------
query|no|A CQL string to filter the results by
profiles|no|A list of profile IDs to filter the results by
traits|yes|An array of `trait` objects

`trait` object definition:

Property|Required?|Description
---------|---------|-----------
trait|yes|Any criterion or criterion filter, optional when inside dimensions and value or dependencies is specified
value|no|Value to filter by (can be combined with dimensions), can also specify "getStaticOptions" under value to tell server to fetch static results
dependencies|no|An object of dependency to value mappings, the dependencies must relate to the trait
options|no|An `options` object
dimensions|no|An array of recursive `trait` objects

`options` object definition:

Property|Required?|Description
---------|---------|-----------
startDateTime|no|Start date ISO8601 string
endDateTime|no|End date ISO8601 string
timeseries|no|A `timeseries` object
sum|no|Boolean, whether to sum up a numeric field, must be on the deepest dimension (or root)
ranges|no|An array of number ranges for numeric fields, can use `*` for unbounded ranges
drillDown|no|Boolean, prevents reverse nesting on dimension traits
unknown|no|Boolean, requires profileCount provides a count of all profiles that have no record for the given trait
profileCount|no|Boolean, reverse nests to get a count of profiles instead of documents/interactions

`timeseries` object definition:

Property|Required?|Description
---------|---------|-----------
interval|yes|One of "day", "hour", "week", "month", or "year"
timezoneOffset|yes|Number
dayOfWeekOffset|no|Number

#Fields

## Get the Options for a Field

```http
GET /v1/fields/AddressCity/options?AddressRegion=1 HTTP/1.1
Accept: application/json
Authorization: Bearer abcd1234
Content-Type: application/json
```

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "success" : true,
  "messages" : [],
  "data" : {
    "collection" : "PhysicalAddresses",
    "options" : [
      {
        "id" : 1,
        "value" : "Lisbon"
      }
    ]
  }
}
```

`GET https://api.crowdskout.com/v1/fields/{field}/options?{dependencyName}={dependencyId}`

Retrieves all the available options for the provided field. This returns an object with the name of the collection of
the provided field and an array of options. These options are not always an exclusive list and many fields let you
provide a new value when updating or creating a profile.

Parameter|Required?|Description
---------|---------|-----------
field|Yes|The name of the field to retrieve options for
dependencyName|No|The field name of the supplied field's parent to filter options
dependencyId|No|The ID of a value in the `dependencyName` options that we want to filter options on

# Attributes

## Get All Attributes

```http
GET /v1/attribute?limit=2&offset=0 HTTP/1.1
Accept: application/json
Authorization: Bearer abcd1234
Content-Type: application/json
```

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "success" : true,
  "messages" : [],
  "data" : {
    "total": 7,
    "list": [
      {
        "id": 1,
        "type": "Radio",
        "locked": false,
        "name": "Ready to set sail",
        "options": [
          {
            "id": 1,
            "value": "Yes"
          },
          {
            "id" : 2,
            "value" : "No"
          }
        ]
      },
      {
        "id": 2,
        "type": "Checkbox",
        "locked": false,
        "name": "Types of Livestock Owned",
        "options": [
          {
            "id" : 1,
            "value" : "Sheep"
          },
          {
            "id" : 2,
            "value" : "Cow"
          }
        ]
      },
      {
        "id": 3,
        "type": "Text",
        "locked": false,
        "name": "Favorite Island Discovered"
      },
      {
        "id": 4,
        "type": "Number",
        "locked": false,
        "name": "Number of Parakeets Owned"
      },
      {
        "id": 5,
        "type": "Tag",
        "locked": true,
        "name": "Circumnavigated the Globe"
      },
      {
        "id": 6,
        "type": "Date",
        "locked": false,
        "name": "Date Arrived at the Spice Islands"
      },
      {
        "id": 7,
        "type": "Datetime",
        "locked": false,
        "name": "Date and Time Circumnavigated the Globe"
      }
    ]
  }
}
```

`GET https://api.crowdskout.com/v1/attribute?limit={limit}&offset={offset}`

Retrieves all of the attributes for the client. An offset and limit can be passed in to page through results.

Parameter|Required?|Description
---------|---------|-----------
limit|No|The number of attributes to limit our return to
offset|No|The number of attributes to skip when fetching attributes

## Get an Attribute by ID

```http
GET /v1/attribute/1 HTTP/1.1
Accept: application/json
Authorization: Bearer abcd1234
Content-Type: application/json
```

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "success" : true,
  "messages" : [],
  "data" : {
     "id" : 1,
     "name" : "Ready to set sail",
     "type" : "Radio",
     "locked" : false,
     "options" : [
       {
         "id" : 1,
         "value" : "Yes"
       },
       {
         "id" : 2,
         "value" : "No"
       }
     ]
   }
}
```

`GET https://api.crowdskout.com/v1/attribute/{id}`

Retrieves a single attribute for the client.

Parameter|Required?|Description
---------|---------|-----------
id|Yes|The ID of the attribute to retrieve


## Create an Attribute

```http
POST /v1/attribute HTTP/1.1
Accept: application/json
Authorization: Bearer abcd1234
Content-Type: application/json

{
  "name" : "Ready to set sail",
  "type" : "Radio",
  "locked" : false,
  "options" : [
    {
      "value" : "Yes"
    },
    {
      "value" : "No"
    }
  ]
}
```

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "success" : true,
  "messages" : [],
  "data" : {
     "id" : 1,
     "name" : "Ready to set sail",
     "type" : "Radio",
     "locked" : false,
     "options" : [
       {
         "id" : 1,
         "value" : "Yes"
       },
       {
         "id" : 2,
         "value" : "No"
       }
     ]
   }
}
```

`POST https://api.crowdskout.com/v1/attribute`

Creates an attribute for the client. Takes a number of parameters in the body of the request.

Parameter|Required?|Description
---------|---------|-----------
name|Yes|The name of the attribute we're creating
type|Yes|The type of attribute we're creating, must be one of: `Radio`, `Checkbox`, `Text`, `Number`, `Tag`, `Date`, `Datetime`
locked|No|A boolean on whether or not to create a locked attribute that the user and subsequent API calls cannot modify - defaults to `false`
options|Sometimes|An array of options for the attribute, required if the supplied type is `Radio` or `Checkbox`

## Update an Attribute

> Request

```http
PUT /v1/attribute/1 HTTP/1.1
Accept: application/json
Authorization: Bearer abcd1234
Content-Type: application/json

{
  "name" : "Ready to set sail",
  "options" : [
    {
      "id" : 1,
      "value" : "Yes"
    },
    {
      "id" : 2,
      "delete" : true,
      "value" : "No"
    },
    {
      "id" : 0,
      "value" : "Not Quite"
    }
  ]
}
```

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "success" : true,
  "messages" : [],
  "data" : {
    "id" : 1,
    "name" : "Ready to set sail",
    "type" : "Radio",
    "locked" : false,
    "options" : [
      {
        "id" : 1,
        "value" : "Yes"
      },
      {
        "id" : 3,
        "value" : "Not Quite"
      }
    ]
  }
}
```

`PUT https://api.crowdskout.com/v1/attribute/{id}`

Updates an attribute for the client with the provided ID. Takes a number of parameters in the body of the request. The
type of an attribute cannot be changed. In the options array provided, any options with an ID will have their value
updated. Any options with `"id" : 0` or no `id` field will be added. Any options with `"delete" : true` will be deleted.

Parameter|Required?|Description
---------|---------|-----------
name|No|The name we want to set the attribute to
options|No|A set of options we want to update

## Delete an Attribute

```http
DELETE /v1/attribute/1 HTTP/1.1
Accept: application/json
Authorization: Bearer abcd1234
Content-Type: application/json
```

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "success" : true,
  "messages" : [],
  "data" : {}
}
```

`DELETE https://api.crowdskout.com/v1/attribute/{id}`

Deletes an attribute with the provided ID.

Parameter|Required?|Description
---------|---------|-----------
id|Yes|The ID of the attribute to delete
