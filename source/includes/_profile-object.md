
# The Profile Object

## Value Types

> *Value* examples

``` json
{
  "string" : "George",
  "number" : 5,
  "ISO 8601 date string" : "2016-01-01",
  "ISO 8601 datetime string" : "2016-01-01T12:00:00+00:00",
  "static object value" : {
    "id" : 1,
    "value" : "Chicago"
  },
  "poser object value" : {
    "id" : "mailchimp1",
    "externalId" : 1,
    "service" : "mailchimp",
    "value" : "Emailing Name"
  },
  "null" : null
}
```

The profile object is made up of a top-level `id` which is the master profile ID. In addition to the `id`, the top level
also contains *Collections*. Each *Collection* is an array made up of *Items*.

Each *Item* has *Fields* with *Values*. Every *Item* has a top-level `id` that represents a unique identifier for this *Item*.

Each *Field* will have a specific type of *Value*:

Type | Description
---- | -------
string | A simple string representation of the *Value*
number | A simple number representation of the *Value*
ISO 8601 date string | A standard representation of a date
ISO 8601 datetime string | A standard representation of a date and time
static object value | A representation of a static object that can be shared by many *Items*, such as a City. The `id` may or may not be numeric
poser object value | A representation of an object that can be shared by many *Items*, but is not necessarily stored in Crowdskout
null | A *Field* without a *Value*



## Collection and Field Reference

> The profile object is structured with *Collections* of *Items*. An *Item* has *Fields* with *Values*:

```json
{
  "id" : 1,
  "Ages" : [
    {
      "id" : 1,
      "Age" : 26,
      "DateOfBirth" : "1990-03-29"
    }
  ],
  "Attributes" : [
    {
      "id" : 2,
      "AttributeId" : 71,
      "AttributeName" : "Ice Cream Lover",
      "AttributeType" : "Text",
      "AttributeValue" : "Yes"
    },  
    {
      "id" : 1,
      "AttributeId" : 1,
      "AttributeName" : "AttributeNumber",
      "AttributeType" : "Number",
      "AttributeValue" : 5
    },
    {
      "id" : 2,
      "AttributeId" : 108,
      "AttributeName" : "AttributeTag",
      "AttributeType" : "Tag",
      "AttributeValue" : {
        "id" : "true",
        "value" : "Yes"
      }
    },
    {
      "id" : 1,
      "AttributeId" : 106,
      "AttributeName" : "AttributeDate",
      "AttributeType" : "Date",
      "AttributeValue" : "2007-10-15"
    },
    {
      "id" : 1,
      "AttributeId" : 107,
      "AttributeName" : "AttributeDatetime",
      "AttributeType" : "Datetime",
      "AttributeValue" : "2014-08-14T12:00:00.000Z"
    },
    {
      "id" : 1,
      "AttributeId" : 70,
      "AttributeName" : "Ice Cream Lover",
      "AttributeType" : "Radio",
      "AttributeValue" : {
        "id" : 1,
        "value" : "Yes"
      }
    },
    {
      "id" : 3,
      "AttributeId" : 72,
      "AttributeName" : "Ice Cream Lover",
      "AttributeType" : "Checkbox",
      "AttributeValue" : [
        {
          "id" : 1,
          "value" : "Yes"
        },
        {
          "id" : 2,
          "value" : "I scream for ice cream"
        }
      ]
    }
  ],
  "BusinessOwners" : [
    {
      "id" : 1,
      "BusinessOwner" : {
        "id" : "yes",
        "value" : "Yes"
      }
    }
  ],
  "CandidateSupports" : [
    {
      "id" : 1,
      "SupportCandidate" : {
        "id" : 1,
        "value" : "Carly Fiorina"
      },
      "CandidateSupportLevel" : {
        "id" : 1,
        "value" : "Strongly Support"
      },
      "CandidateSupportDate" : "2016-01-10"
    }
  ],
  "Children" : [
    {
      "id" : 1,
      "ChildAge" : 1,
      "ChildGender" : {
        "id" : 1,
        "value" : "Male"
      }
    }
  ],  
  "CrowdskoutScores" : [
    {
      "id" : 1,
      "CrowdskoutScore" : 40,
      "CrowdskoutScoreLabel" : "Moderately Engaged"
    }
  ],
  "Devices" : [
    {
      "id" : 1,
      "DeviceType" : {
        "id" : 1,
        "value" : "Desktop"
      },
      "DeviceOperatingSystem" : {
        "id" : 1,
        "value" : "OS X 10.10"
      },
      "DeviceModel" : {
        "id" : 1,
        "value" : "Mac Book Pro"
      },
      "DeviceIDs" : [
        {
          "id" : 1,
          "DeviceIDType" : "GCMID",
          "DeviceIDValue" : "c45922be-d81f-4342-b4bb-f29bd4322169"
        }
      ]
    }
  ],
  "DirectMails" : [
    {
      "id" : "7d8c86ac-aaed-45a3-9ae9-a4b9602c5ec9",
      "DirectMailOrganization" : {
        "id" : 1,
        "value" : "Modern Notion"
      },
      "DirectMailWhen" : "2014-12-15T12:00:00+00",
      "DirectMailing" : {
        "id" : 1,
        "value" : "Postcards for Greatness"
      },
      "DirectMailerType" : {
        "id" : "postcard", 
        "value" : "Postcard"
      },
      "DirectMailSolicitationCode" : "0315FP",
      "DirectMailAddress" : "1875 Connecticut Ave. NW, 10th Floor, Washington DC, 20009"
    }
  ],
  "DistrictCensusBlockGroups" : [
    {
      "id" : 1,
      "DistrictCensusBlockGroup" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],
  "DistrictCensusTracts" : [
    {
      "id" : 1,
      "DistrictCensusTract" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],  
  "DistrictCities" : [
    {
      "id" : 1,
      "DistrictCity" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],
  "DistrictCitySubs" : [
    {
      "id" : 1,
      "DistrictCitySub" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],  
  "DistrictCitywides" : [
    {
      "id" : 1,
      "DistrictCitywide" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],
  "DistrictCommunityColleges" : [
    {
      "id" : 1,
      "DistrictCommunityCollege" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],
  "DistrictCongressionals" : [
    {
      "id" : 1,
      "DistrictCongressional" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],
  "DistrictCountyCommissioners" : [
    {
      "id" : 1,
      "DistrictCountyCommissioner" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],
  "DistrictCountywides" : [
    {
      "id" : 1,
      "DistrictCountywide" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],
  "DistrictFires" : [
    {
      "id" : 1,
      "DistrictFire" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],
  "DistrictFloods" : [
    {
      "id" : 1,
      "DistrictFlood" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],
  "DistrictHighSchools" : [
    {
      "id" : 1,
      "DistrictHighSchool" : {
        "id" : 1,
        "value" : "Carolton High School District"
      }
    }
  ],
  "DistrictHospitals" : [
    {
      "id" : 1,
      "DistrictHospital" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],
  "DistrictJudicials" : [
    {
      "id" : 1,
      "DistrictJudicial" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],
  "DistrictLibraries" : [
    {
      "id" : 1,
      "DistrictLibrary" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],
  "DistrictNDMAs" : [
    {
      "id" : 1,
      "DistrictNDMA" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],
  "DistrictParks" : [
    {
      "id" : 1,
      "DistrictPark" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],
  "DistrictPrecincts" : [
    {
      "id" : 1,
      "DistrictPrecinct" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],
  "DistrictRoads" : [
    {
      "id" : 1,
      "DistrictRoad" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],
  "DistrictSanitations" : [
    {
      "id" : 1,
      "DistrictSanitation" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],
  "DistrictSchools" : [
    {
      "id" : 1,
      "DistrictSchool" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],
  "DistrictSewers" : [
    {
      "id" : 1,
      "DistrictSewer" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],
  "DistrictStateLowers" : [
    {
      "id" : 1,
      "DistrictStateLower" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],
  "DistrictStateUppers" : [
    {
      "id" : 1,
      "DistrictStateUpper" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],
  "DistrictStatewides" : [
    {
      "id" : 1,
      "DistrictStatewide" : {
        "id" : 1,
        "value" : "Arkansas"
      }
    }
  ],
  "DistrictTownships" : [
    {
      "id" : 1,
      "DistrictTownship" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],
  "DistrictUtilities" : [
    {
      "id" : 1,
      "DistrictUtility" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],
  "DistrictVillages" : [
    {
      "id" : 1,
      "DistrictVillage" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],
  "DistrictWards" : [
    {
      "id" : 1,
      "DistrictWard" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],  
  "DistrictWaters" : [
    {
      "id" : 1,
      "DistrictWater" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],
  "DistrictWatersheds" : [
    {
      "id" : 1,
      "DistrictWatershed" : {
        "id" : 1,
        "value" : "5"
      }
    }
  ],
  "Donations" : [
    {
      "id" : "ebe43c2f-c0db-4820-a370-f1210c120aea",
      "DonationOrganization" : {
        "id" : 1,
        "value" : "Modern Notion"
      },
      "DonationWhen" : "2014-01-01T12:00:00+00",
      "DonationAmount" : 100.00,
      "DonationExternalID" : "jwalkV-adwkj",
      "DonationCampaign":  {
        "id" : "donor-perfect1",
        "externalId" : 1,
        "service" : "donor-perfect",
        "value" :  "High Value Donors 2016"
      },
      "DonationPaidWith" : {
        "id" : "check",
        "value" : "Check"
      },
      "DonationCollectionMethod" : {
        "id" : "event",
        "value" : "Event"
      }
    }
  ],
  "Dwellings" : [
    {
      "id" : 1,
      "DwellingType" : {
        "id" : 2,
        "value" : "House"
      },
      "OwnRent" : {
        "id" : "own",
        "value" : "Own"
      },
      "DwellingEstimatedValue" : 100000,
      "YearsLived" : 3
    }
  ],
  "Educations" : [
    {
      "id" : 1,
      "GraduationYear" : "2012",
      "EducationInstitution" : {
        "id" : 1,
        "value" : "University of Chicago"
      },
      "EducationLevel" : {
        "id" : 1,
        "value" : "Undergraduate"
      },
      "EducationField" : {
        "id" : 1,
        "value" : "Computer science"
      }
    }
  ],
  "EmailAddresses" : [
    {
      "id" : 1,
      "Email" : "gtown42@gmail.com",
      "EmailContact" : {
        "id" : 1,
        "value" : "Personal"
      },
      "EmailUsable" : {
        "id" : 1,
        "value" : "Usable"
      }
    }
  ],
  "EmailBounces": [
    {
      "id": "ebe43c2f-c0db-4820-a370-f1210c120aea",
      "EmailBounceOrganization" : {
        "id" : 1,
        "value" : "Modern Notion"
      },
      "EmailBounceWhen": "2014-12-15T12:00:00+00",
      "EmailBounceService": "mailchimp",
      "EmailBounceEmail": "george@crowdskout.com",
      "EmailBounceEmailing": {
        "id" : "mailchimp1",
        "externalId" : 1,
        "service" : "mailchimp",
        "value" : "A bad list emailing"
      }
    }
  ],
  "EmailClicks": [
    {
      "id": "ebe43c2f-c0db-4820-a370-f1210c120aea",
      "EmailClickOrganization" : {
        "id" : 1,
        "value" : "Modern Notion"
      },
      "EmailClickWhen": "2014-12-15T12:00:00+00",
      "EmailClickURL": "http://app.crowdskout.com",
      "EmailClickEmail": "george@crowdskout.com",
      "EmailClickService" : "mailchimp",
      "EmailClickEmailing" : {
        "id" : "mailchimp1",
        "externalId" : 1,
        "service" : "mailchimp",
        "value" : "A good list emailing"
      }
    }
  ],
  "EmailOpens": [
    {
      "id": "ebe43c2f-c0db-4820-a370-f1210c120aea",
      "EmailOpenOrganization" : {
        "id" : 1,
        "value" : "Modern Notion"
      },
      "EmailOpenWhen": "2014-12-15T12:00:00+00",
      "EmailOpenService": "mailchimp",
      "EmailOpenEmail": "george@crowdskout.com",
      "EmailOpenEmailing" : {
        "id" : "mailchimp1",
        "externalId" : 1,
        "service" : "mailchimp",
        "value" : "A good list emailing"
      }
    }
  ],
  "EmailSends" : [
    {
      "id": "ebe43c2f-c0db-4820-a370-f1210c120aea",
      "EmailSendOrganization" : {
        "id" : 1,
        "value" : "Modern Notion"
      },
      "EmailSendWhen" : "2012-01-25T12:00:00+00",
      "EmailSendService" : "mailchimp",
      "EmailSendEmail" : "george@crowdskout.com",
      "EmailSendEmailing" : {
        "id" : "mailchimp1",
        "externalId" : 1,
        "service" : "mailchimp",
        "value" : "A good list emailing"
      }
    }
  ],
  "EmailSpamComplaints": [
    {
      "id": "ebe43c2f-c0db-4820-a370-f1210c120aea",
      "EmailSpamComplaintOrganization" : {
        "id" : 1,
        "value" : "Modern Notion"
      },
      "EmailSpamComplaintWhen": "2014-12-15T12:00:00+00",
      "EmailSpamComplaintService": "mailchimp",
      "EmailSpamComplaintEmail": "george@crowdskout.com",
      "EmailSpamComplaintEmailing" : {
        "id" : "mailchimp1",
        "externalId" : 1,
        "service" : "mailchimp",
        "value" : "A bad list emailing"
      }
    }
  ],
  "EmailUnsubscribes": [
    {
      "id": "ebe43c2f-c0db-4820-a370-f1210c120aea",
      "EmailUnsubscribeOrganization" : {
        "id" : 1,
        "value" : "Modern Notion"
      },
      "EmailUnsubscribeWhen": "2014-12-15T12:00:00+00",
      "EmailUnsubscribeService": "mailchimp",
      "EmailUnsubscribeEmail": "george@crowdskout.com",
      "EmailUnsubscribeEmailing" : {
        "id" : "mailchimp1",
        "externalId" : 1,
        "service" : "mailchimp",
        "value" : "A bad list emailing"
      }
    }
  ],
  "Ethnicities" : [
    {
      "id" : 1,
      "Ethnicity" : {
        "id" : 1,
        "value" : "Caucasian"
      }
    }
  ],
  "EventAttendances" : [
    {
      "id" : "ebe43c2f-c0db-4820-a370-f1210c120aea",
      "EventAttendanceOrganization" : {
        "id" : 1,
        "value" : "Modern Notion"
      },
      "EventAttendanceWhen" : "2016-01-01T12:00:00+00",
      "EventAttendanceType" : {
        "id" : "debate-watch-party",
        "value" : "Debate Watch Party"
      },
      "EventAttendanceHost" : {
        "id" : "george-yates",
        "value" : "George Yates"
      },
      "EventAttendanceIsHost" : {
        "id" : "yes",
        "value" : "Yes"
      }
    }
  ],
  "EventRegistrations" : [
    {
      "id" : "ebe43c2f-c0db-4820-a370-f1210c120aea",
      "EventRegistrationOrganization" : {
        "id" : 1,
        "value" : "Modern Notion"
      },
      "EventRegistrationWhen" : "2014-12-15T12:00:00+00",
      "EventRegistrationEvent" : {
        "id" : "new-years-eve-eve", 
        "value" : "New Years Eve Eve"
      },
      "EventRegistrationEventDatetime" : "2014-12-30T12:00:00Z",
      "EventRegistrationEventDescription" : "A day of joyous celebration",
      "EventRegistrationEventURL" : "http://eventbrite.com",
      "EventRegistrationTicketName" : "VIP",
      "EventRegistrationDiscountCode" : "20OFF"
    }
  ],
  "ExternalIDs" : [
    {
      "id" : 1,
      "ExternalID" : "account_50",
      "ExternalIDType": {
        "id": 1,
        "value": "Localytics Device UUID"
      }
    },
    {
      "id" : 2,
      "ExternalID" : "3532",
      "ExternalIDType": {
        "id": 2,
        "value": "VoteSpotter Database ID"
      }
    }
  ],
  "Facebooks" : [
    {
      "id" : 1,
      "FacebookID" : "1235676",
      "FacebookURL" : "http://facebook.com/1235676"
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
  ],
  "Households" : [
    {
      "id" : 1,
      "HeadOfHousehold" : {
        "id" : "no",
        "value" : "No"
      }
    }
  ],
  "Images" : [
    {
      "id" : 1,
      "Image" : "http://a4.files.biography.com/image/upload/c_fill,cs_srgb,dpr_1.0,g_face,h_300,q_80,w_300/MTE5NDg0MDU1Mzg2Njg2OTkx.jpg"
    }
  ],
  "Incomes" : [
    {
      "id" : 1,
      "Income" : 40000
    }
  ],
  "Interests" : [
    {
      "id" : 1,
      "Interest" : {
        "id" : 1,
        "value" : "Football"
      }
    }
  ],
  "Investments" : [
    {
      "id" : 1,
      "InvestmentAmount" : 10000,
      "InvestmentTopic" : {
        "id" : 2,
        "value" : "Healthcare"
      },
      "CurrentlyInvested" : {
        "id" : "yes",
        "value" : "Yes"
      }
    }
  ],
  "IPAddresses" : [
    {
      "id" : 1,
      "IPAddress" : "127.0.0.1"
    }
  ],
  "Issues" : [
    {
      "id" : 1,
      "Issue" : {
        "id" : 1,
        "value" : "Abortion"
      },
      "IssuePosition" : {
        "id" : 1,
        "value" : "Pro-Life"
      }
    },
    {
      "id" : 2,
      "Issue" : {
        "id" : 2,
        "value" : "Taxes"
      },
      "IssuePosition" : {
        "id" : 6,
        "value" : "Anti Income Tax"
      }
    }
  ],
  "Knocks" : [
    {
      "id" : "f13d1056-bdf3-4096-8f2f-3a413f580990",
      "KnockOrganization" : {
        "id" : 1,
        "value" : "Modern Notion"
      },
      "KnockWhen" : "2012-01-25T12:00:00+00",
      "KnockState" : {
        "id" : "completed",
        "value" : "Completed"
      },
      "KnockDayTrip" : {
        "id" : 150,
        "value" : "Test Daytrip"
      },
      "KnockRoute" : {
        "id" : 3291,
        "value" : "Route #1"
      },
      "KnockVolunteer" : {
        "id" : "1",
        "value" : "George Yates"
      },
      "KnockSurveySubmissionID" : "e4f0044d-6ae2-4dd3-92e1-17e13fafd6c4",
      "KnockFormSubmissionID" : "97d03420-84ba-477f-8b1c-c56e546cd9fa",
      "KnockSurvey" : {
        "id" : "survey-monkey1",
        "externalId" : 1,
        "service" : "survey-monkey",
        "value" : "Fake Survey"
      }
    }
  ],
  "LegislationPositions" : [
    {
      "id" : 1,
      "LegislationPositionDateTaken" : "2015-01-01",
      "LegislationPosition" : {
        "id" : "no",
        "value" : "No"
      },
      "LegislationPositionLegislation" : {
        "id" : 1,
        "value" : "HRS115 CISPA"
      },
      "LegislationPositionLegislationStartYear" : 2012,
      "LegislationPositionLegislationEndYear" : 2013,
      "LegislationPositionLegislationDistrict" : {
        "id" : 1,
        "value" : "Illinois"
      },      
      "LegislationPositionGovernmentBodies" : [
        {
          "id" : 1,
          "value" : "Illinois State Senate"
        }
      ]
    }
  ],
  "LegislatorContacts" : [
    {
      "id" : "f13d1056-bdf3-4096-8f2f-3a413f580990",
      "LegislatorContactOrganization" : {
        "id" : 1,
        "value" : "Modern Notion"
      },
      "LegislatorContactWhen" : "2014-12-15T12:00:00+00",
      "LegislatorContactLegislator" : {
        "id" : 1,
        "value" : "Senator Grace"
      },
      "LegislatorContactLegislation" : {
        "id" : 1,
        "value" : "HRS115 CISPA"
      },
      "LegislatorContactWhy" : "Against",
      "LegislatorContactPlatform" : {
        "id" : "email",
        "value" : "Email"
      }
    }
  ],
  "LinkedIns" : [
    {
      "id" : 1,
      "LinkedInID" : "1235676",
      "LinkedInURL" : "http://linkedin.com/1235676"
    }
  ],
  "MaritalStatuses" : [
    {
      "id" : 5,
      "MaritalStatus" : {
        "id" : 1,
        "value" : "Single"
      }
    }
  ],
  "Memberships" : [
    {
      "id" : 1,
      "MemberOrganization" : {
        "id" : 1,
        "value" : "NRA"
      },
      "MemberActive" : {
        "id" : "no",
        "value" : "No"
      },
      "MemberTitle" : "Member",
      "MemberJoined" : "2014-01-01",
      "MemberLeft" : "2014-05-01",
      "MemberLeader" : {
        "id" : "no",
        "value" : "No"
      },
      "MemberDonor" : {
        "id" : "yes",
        "value" : "Yes"
      }
    }
  ],
  "MobileAppInstalls" : [
    {
      "id" : "ec41abe4-ecb9-469f-b0ce-345d57d8e356",
      "MobileAppInstallOrganization" : {
        "id" : 1,
        "value" : "Modern Notion"
      },
      "MobileAppInstallWhen" : "2015-01-01T12:00:00+00",
      "MobileAppInstallCity" : {
        "id" : 1,
        "value" : "Chicago"
      },
      "MobileAppInstallRegion" : {
        "id" : 1,
        "value" : "Illinois"
      },
      "MobileAppInstallCountry" : {
        "id" : 1,
        "value" : "USA"
      }
    }
  ],
  "MobileAppSessions" : [
    {
      "id" : "e983c1cf-0672-4ebd-9ae6-7d91902776c1",
      "MobileAppSessionOrganization" : {
        "id" : 1,
        "value" : "Modern Notion"
      },
      "MobileAppSessionWhen" : "2015-01-01T12:00:00+00",
      "MobileAppSessionDuration" : 30,
      "MobileAppSessionScreens" : [
        "Login",
        "List view",
        "Detail view"
      ],
      "MobileAppSessionCity" : {
        "id" : 1,
        "value" : "Chicago"
      },
      "MobileAppSessionRegion" : {
        "id" : 1,
        "value" : "Illinois"
      },
      "MobileAppSessionCountry" : {
        "id" : 1,
        "value" : "USA"
      }
    }
  ],
  "Names" : [
    {
      "id" : 1,
      "FullName" : "Barry L Chambers IV",
      "NameTitle" : null,
      "FirstName" : "Barry",
      "MiddleName" : "L",
      "LastName" : "Chambers",
      "NameSuffix" : "IV"
    }
  ],
  "NetWorths" : [
    {
      "id" : 1,
      "NetWorth" : 500000
    }
  ],
  "Notes" : [
    {
      "id" : 1,
      "NoteWhen" : "2012-01-21T12:00:00+00",
      "NoteAuthor" : "George Yates",
      "Note" : "Body of the note"
    }
  ],
  "Occupations" : [
    {
      "id" : 1,
      "OccupationTitle" : {
        "id" : 1,
        "value" : "Burglar"
      },
      "OccupationEmployer" : {
        "id" : 1,
        "value" : "IRS"
      },
      "OccupationEmployed" : {
        "id" : "yes",
        "value" : "Yes"
      },
      "OccupationIndustry" : {
        "id" : 1,
        "value" : "Technology"
      },
      "OccupationStarted" : "2010-01-01",
      "OccupationEnded" : "2015-10-01",
      "OccupationSalary" : 1000000
    }
  ],
  "OneOnOnes": [
    {
      "id" : "ec41abe4-ecb9-469f-b0ce-345d57d8e356",
      "OneOnOneOrganization": {
        "id": 1,
        "value": "Modern Notion"
      },
      "OneOnOneWhen": "2014-12-15T12:00:00Z",
      "OneOnOneType": {
        "id" : "debrief",
        "value" : "Debrief"
      },
      "OneOnOneUser" : {
        "id": 1,
        "value": "Dan Fey"
      },
      "OneOnOneRncRole": {
        "id": "rli-fellow",
        "value": "RLI Fellow"
      },
      "OneOnOneHardAsk": {
        "id" : false,
        "value" : "False"
      },
      "OneOnOneHardAskAnswer": "yes",
      "OneOnOnePreviousContactDatetime": "2014-11-15T12:00:00+00",
      "OneOnOneAnswerArray": {
        "Follow Up": "2015-01-01T12:00:00Z",
        "Received Adequate Previous Attention": "Yes",
        "Would Participate Again": "Yes",
        "Feedback on Organization Previously": "The organization was extremely efficient"
      }
    }
  ],
  "PageViews" : [
    {
      "id" : "360045ee-a5d0-477e-9b5a-1d545a66c848",
      "PageViewOrganization" : {
        "id" : 1,
        "value" : "Modern Notion"
      },
      "PageViewWhen" : "2012-01-25T12:00:00+00",
      "PageViewImage" : "http://www.thewrap.com/sites/default/files/original_1.jpg",
      "PageViewURL" : "http://www.google.com",
      "PageViewPageTitle" : "Google",
      "PageViewPageDescription" : "Website",
      "PageViewPageTopics" : [
        {
          "id" :1,
          "value" : "Sports"
        }
      ]
    }
  ],
  "PhoneCalls" : [
    {
      "id" : "360045ee-a5d0-477e-9b5a-1d545a66c848",
      "PhoneCallOrganization" : {
        "id" : 1,
        "value" : "Modern Notion"
      },
      "PhoneCallWhen" : "2014-12-15T12:00:00+00",
      "PhoneCallPhoneCalling" : {
        "id" : "robocalls-for-greatness",
        "value" : "Robocalls for Greatness"
      },
      "PhoneCallNumber" : "7734708486",
      "PhoneCallResult" : {
        "id" : "picked-up",
        "value" : "Picked Up"
      },
      "PhoneCallLength" : 12,
      "PhoneCallType" : {
        "id" : "robocall",
        "value" : "Robocall"
      }
    }
  ],
  "PhoneNumbers" : [
    {
      "id" : 1,
      "PhoneNumber" : "7734708486",
      "PhoneType" : {
        "id" : 1,
        "value" : "Cell"
      },
      "PhoneContact" : {
        "id" : 1,
        "value" : "Personal"
      },
      "PhoneUsable" : {
        "id" : 1,
        "value" : "Usable"
      }
    }
  ],
  "PhysicalAddresses" : [
    {
      "id" : 1,
      "Address1" : "5532 S. Dorchester Ave.",
      "Address2" : "Suite 500",
      "Address3" : null,
      "AddressCity" : {
        "id" : 1,
        "value" : "Chicago"
      },
      "AddressRegion" : {
        "id" : 5,
        "value" : "Illinois"
      },
      "AddressPostalCode" : "60637",
      "AddressCounty" : {
        "id" : 1,
        "value" :  "Cook"
      },
      "AddressCountry" : {
        "id" : 1,
        "value" :  "USA"
      },
      "AddressLatitude" : 41.794111,
      "AddressLongitude" : -87.592057,
      "AddressContact" : {
        "id" : 1,
        "value" : "Personal"
      },
      "AddressUsable" : {
        "id" : 1,
        "value" : "Usable"
      }
    }
  ],
  "PoliticalOrientationScores" : [
    {
      "id" : 1,
      "PoliticalOrientationScore" : 40,
      "PoliticalOrientationScoreLabel" : "Republican"
    }
  ],
  "Religions" : [
    {
      "id": 13,
      "Religion": {
        "id": 22,
        "value": "Unitarian Universalism"
      }
    }
  ],
   "SocialEngages": [
    {
     "id": "00a6d60d-25af-4d5d-a17d-d68a9eeb7a63",
      "SocialEngageOrganization": {
        "id": 1,
        "value": "Crowdskout"
      },
      "SocialEngageWhen": "2015-04-19T19:07:29+00",
      "SocialEngageService": {
        "id" : "facebook",
        "value" : "Facebook"
      },
      "SocialEngageEngages": "cnn content"
    }
  ],
  "SocialShares": [
    {
      "id": "00a6d60d-25af-4d5d-a17d-d68a9eeb7a63",
      "SocialShareOrganization": {
        "id": 1,
        "value": "Crowdskout"
      },
      "SocialShareWhen": "2015-04-19T19:06:16+00",
      "SocialShareService": {
        "id" : "facebook",
        "value" : "Facebook"
      },
      "SocialShareURL": "google.com",
      "SocialShareTitle" : "Against - HRS1115 CISPA"
    }
  ],
  "StateVoterRegistrations" : [
    {
      "id" : 1,
      "StateRegisteredVoter" : {
        "id" : "yes",
        "value" : "Yes"
      },
      "StateVoterID" : "abcdjkl123",
      "CountyVoterID" : "abdhwjdw",
      "OriginalVoterRegistrationDate" : "2012-07-12",
      "LatestVoterRegistrationDate" : "2014-08-14",
      "VoterRegistrationParty" : {
        "id" : 1,
        "value" : "Democrat"
      }
    }
  ],
  "Students" : [
    {
      "id" : 1,
      "Student" : {
        "id" : "yes",
        "value" : "Yes"
      }
    }
  ],
  "Submissions" : [
    {
      "id" : "398de1a7-e234-4a4c-b10c-86f2b2bd351d",
      "SubmissionOrganization" : {
        "id" : 1,
        "value" : "Modern Notion"
      },
      "SubmissionWhen" : "2012-01-25T12:00:00.000Z",
      "SubmissionForm" : {
        "id" : 5,
        "value" : "Test Form"
      },
      "SubmissionFormType": {
        "id" : "quiz",
        "value" : "Quiz"
      },
      "SubmissionFormSubTypes" : [
        "Checklist"
      ],
      "SubmissionResponses" : [
        {
          "Question" : {
            "id" : "whats-your-favorite-color",
            "value" : "What's your favorite color?"
          },
          "Answers" : [
            {
              "id" : 1,
              "value" : "Blue"
            }
          ]
        },
        {
          "Question" : {
            "id" : "email",
            "value" : "Email"
          },
          "Answers" : [
            {
              "id" : "george@crowdskout.com",
              "value" : "george@crowdskout.com"
            }
          ]
        }
      ]
    }
  ],
  "ThirdPartySubmissions" : [
    {
      "id": "398de1a7-e234-4a4c-b10c-86f2b2bd351d",
      "ThirdPartySubmissionOrganization" : {
        "id" : 1,
        "value" : "Modern Notion"
      },
      "ThirdPartySubmissionWhen": "2014-12-15T12:00:00+00",
      "ThirdPartySubmissionURL" : "http://crowdskout.com",
      "ThirdPartySubmissionResponses" : [
        {
          "Question" : {
            "id" : "whats-your-favorite-color",
            "value" : "What's your favorite color?"
          },
          "Answers" : [
            {
              "id" : 1,
              "value" : "Blue"
            }
          ]
        },
        {
          "Question" : {
            "id" : "email",
            "value" : "Email"
          },
          "Answers" : [
            {
              "id" : "george@crowdskout.com",
              "value" : "george@crowdskout.com"
            }
          ]
        }
      ]
    }
  ],
  "Twitters" : [
    {
      "id" : 1,
      "TwitterID" : "860711557",
      "TwitterURL" : "http://twitter.com/georgeyatesiii"
    }
  ],
  "Veterans" : [
    {
      "id" : 1,
      "Veteran" : {
        "id" : "yes",
        "value" : "Yes"
      }
    }
  ],
  "VideoPlays": [
    {
      "id": "e09260a7-d898-4d4b-8be7-1818892737b2",
      "VideoPlayOrganization" : {
        "id" : 1,
        "value" : "Modern Notion"
      },
      "VideoPlayWhen": "2014-12-15T12:00:00+00",
      "VideoPlayService" : {
        "id" : "youtube",
        "value" : "YouTube"
      },
      "VideoPlayTitle" : "Cat shark roomba duck",
      "VideoPlayURL" : "http://youtube.com",
      "VideoPlayStarted" : 0,
      "VideoPlayStopped" : 202,
      "VideoPlayDuration" : 202,
      "VideoPlayFinished" : {
        "id" : "yes",
        "value" : "Yes"
      }
    }
  ],
  "VoterRegistrationInteractions" : [
    {
      "id" : "2c2028c1-6a2b-4d47-9674-627b72c808ac",
      "VoterRegistrationInteractionOrganization" : {
        "id" : 1,
        "value" : "Modern Notion"
      },
      "VoterRegistrationInteractionWhen" : "2014-12-15T12:00:00Z",
      "VoterRegistrationInteractionParty" : {
        "id" : 1,
        "value" : "Democrat"
      },
      "VoterRegistrationInteractionType" : {
        "id" : "change-of-address",
        "value" : "Change of Address"
      },
      "VoterRegistrationInteractionPetitionType" : {
        "id" : "epa",
        "value" : "EPA"
      },
      "VoterRegistrationInteractionLocation" : "Voter Registration Drive",
      "VoterRegistrationInteractionLocationType" : {
        "id" : "event",
        "value" : "Event"
      },
      "VoterRegistrationInteractionTurnedIn" : "2015-01-01",
      "VoterRegistrationInteractionLead" : {
        "id" : 1,
        "value" : "George Yates"
      },
      "VoterRegistrationInteractionNonStafferCollector" : {
        "id" : 1,
        "value" : "Will Durney"
      },
      "VoterRegistrationInteractionRole" : {
        "id" : "rli-fellow",
        "value" : "RLI Fellow"
      }
    }
  ],
  "Votes" : [
    {
      "id" : 4,
      "VotedWhen" : "2012",
      "VotedElection" : {
        "id" : 1,
        "value" : "Primary"
      },
      "VotedRegion" : {
        "id" : 1,
        "value" : "Illinois"
      },
      "Voted" : {
        "id" : "yes" ,
        "value" : "Yes"
      },
      "VotedEarly" : {
        "id" : "no",
        "value" : "No"
      },
      "VotedAbsentee" : {
        "id" : "unknown",
        "value" : "Unknown"
      },
      "VotedParty" : {
        "id" : 1,
        "value" : "Democrat"
      }
    },
    {
      "id" : 5,
      "VotedWhen" : "2012",
      "VotedElection" : {
        "id" : 1,
        "value" : "General"
      },
      "VotedRegion" : {
        "id" : 1,
        "value" : "Illinois"
      },
      "Voted" : {
        "id" : "yes" ,
        "value" : "Yes"
      },
      "VotedEarly" : {
        "id" : "no",
        "value" : "No"
      },
      "VotedAbsentee" : {
        "id" : "unknown",
        "value" : "Unknown"
      },
      "VotedPrimaryParty" : null
    }
  ]
}
```

Collection | Field | Description
---------- | ----- | -----------
Ages | Age | The profile's age
 | DateOfBirth | The profile's date of birth
Attributes | AttributeID | The ID of the Attribute itself
 | AttributeName | The name of the attribute itself
 | AttributeType | The type of the attribute
 | AttributeValue | The value for this attribute for the profile, could be a number of different *Value* types depending on the AttributeType
BusinessOwners | BusinessOwner | Whether or not the profile is a business owner
CandidateSupports | SupportCandidate | The candidate that the profile has indicated a support level for
 | CandidateSupportLevel | The level of support that the profile has indicated for the candidate
 | CandidateSupportDate | The date the profile indicated their support for the candidate
Children | ChildAge | The age of the child this profile has
 | ChildGender | The gender of the child this profile has
CrowdskoutScores | CrowdskoutScore | A numeric representation of the level of engagement of the profile with the client
 | CrowdskoutScoreLabel | A string representation of the level of engagement
Devices | DeviceType | A type of device that the profile uses
 | DeviceOperatingSystem | The operating system on a device that the profile uses
 | DeviceModel | The specific model of a device that the profile uses
 | DeviceIDs | An array of device IDs for a specific device that the profile uses
DirectMails | DirectMailOrganization | The organization that sent the direct mail piece
 | DirectMailWhen | The datetime that the direct mail piece was sent
 | DirectMailing | A poser object representation of the direct mailing campaign
 | DirectMailerType | The specific type of mailer sent to the profile
 | DirectMailSolicitationCode | The solicitation code used in the direct mailer as it ties back to a donation system
 | DirectMailAddress | A single string representation of the address that the mailer was sent to
DistrictCensusBlockGroups | DistrictCensusBlockGroup | The name of the census block group that the profile resides in
DistrictCensusTracts | DistrictCensusTract | The name of the census tract that the profile resides in
DistrictCities | DistrictCity | The name of the city district that the profile resides in
DistrictCitySubs | DistrictCitySub | The name of the city sub-district that the profile resides in
DistrictCitywides | DistrictCitywide | The name of the citywide district that the profile resides in
DistrictCommunityColleges | DistrictCommunityCollege | The name of the community college district that the profile resides in
DistrictCongressionals | DistrictCongressional | The name of the congressional district that the profile resides in
DistrictCountyCommissioners | DistrictCountyCommissioner | The name of the county commissioner district that the profile resides in
DistrictCountywides | DistrictCountywide | The name of the countywide district that the profile resides in
DistrictFires | DistrictFire | The name of the fire district that the profile resides in
DistrictFloods | DistrictFlood | The name of the flood district that the profile resides in
DistrictHighSchools | DistrictHighSchool | The name of the high school district that the profile resides in
DistrictHospitals | DistrictHospital | The name of the hospital district that the profile resides in
DistrictJudicials | DistrictJudicial | The name of the judicial district that the profile resides in
DistrictLibraries | DistrictLibrary | The name of the library district that the profile resides in
DistrictNDMAs | DistrictNDMA | The name of the Nielsen designated marketing area that the profile resides in
DistrictParks | DistrictPark | The name of the park district that the profile resides in
DistrictPrecincts | DistrictPrecinct | The name of the precinct that the profile resides in
DistrictRoads | DistrictRoad | The name of the road district that the profile resides in
DistrictSanitations | DistrictSanitation | The name of the sanitation district that the profile resides in
DistrictSchools | DistrictSchool | The name of the school district that the profile resides in
DistrictSewers | DistrictSewer | The name of the sewer district that the profile resides in
DistrictStateLowers | DistrictStateLower | The name of the state lower district that the profile resides in
DistrictStateUppers | DistrictStateUpper | The name of the state upper district that the profile resides in
DistrictStatewides | DistrictStatewide | The name of the statewide district that the profile resides in
DistrictTownships | DistrictTownship | The name of the township district that the profile resides in
DistrictUtilities | DistrictUtility | The name of the utility district that the profile resides in
DistrictVillages | DistrictVillage | The name of the village district that the profile resides in
DistrictWards | DistrictWard | The name of the ward that the profile resides in
DistrictWaters | DistrictWater | The name of the water district that the profile resides in
DistrictWatersheds | DistrictWatershed | The name of the watershed district that the profile resides in
Donations | DonationOrganization | The organization that the donation was made to
 | DonationWhen | The datetime that the donation was made
 | DonationAmount | The dollar amount that the donation was for
 | DonationExternalID | The external ID of the donation in an external service
 | DonationCampaign | The donor campaign that the donation was collected under
 | DonationPaidWith | The method that the donation was paid with
 | DonationCollectionMethod | How the donation was collection, at an event, online, etc.
Dwellings | DwellingType | The type of dwelling that the profile lives in
 | OwnRent | Whether the profile owns or rents the dwelling
 | DwellingEstimatedValue | The estimated value of the dwelling the profile lives in
 | YearsLived | The number of years that the profile has lived in their dwelling
Educations | GraduationYear | The year the profile graduated or will graduate from this institution
 | EducationInstitution | The institution that the profile attended
 | EducationLevel | The level of education that the profile attended the institution at
 | EducationField | The field of study for the profile at this institution
EmailAddresses | Email | An email address for the profile
 | EmailContact | The contact type of the email address
 | EmailUsable | Whether or not the email is usable
EmailBounces | EmailBounceOrganization | The organization that sent the email that bounced
 | EmailBounceWhen | The datetime that the email bounced
 | EmailBounceService | The ESP service that sent the email that bounced
 | EmailBounceEmail | The email address that the email was sent to
 | EmailBounceEmailing | The emailing that the email that bounced was apart of
EmailClicks | EmailClickOrganization | The organization that sent the email that was clicked
 | EmailClickWhen | The datetime that the email was clicked
 | EmailClickURL | The URL of the link that was clicked
 | EmailClickEmail | The email address that the email was sent to
 | EmailClickService | The ESP service that sent the email that was clicked
 | EmailClickEmailing | The emailing that the email that was clicked was apart of
EmailOpens | EmailOpenOrganization | The organization that sent the email that was opened
 | EmailOpenWhen | The datetime that the email was opened
 | EmailOpenService | The ESP service that sent the email that was opened
 | EmailOpenEmail | The email address that the email was sent to
 | EmailOpenEmailing | The emailing that the email that was opened was apart of
EmailSends | EmailSendOrganization | The organization that sent the email
 | EmailSendWhen | The datetime that the email was sent
 | EmailSendService | The ESP service that sent the email
 | EmailSendEmail | The email address that the email was sent to
 | EmailSendEmailing | The emailing that the email was apart of
EmailSpamComplaints | EmailSpamComplaintOrganization | The organization that sent the email that had a complaint
 | EmailSpamComplaintWhen | The datetime that the complaint was filed
 | EmailSpamComplaintService | The ESP service that sent the email
 | EmailSpamComplaintEmail | The email address that the email was sent to that complained
 | EmailSpamComplaintEmailing | The emailing that the email was apart of
EmailUnsubscribes | EmailUnsubscribeOrganization | The organization that sent the email
 | EmailUnsubscribeWhen | The datetime that the profile unsubscribed
 | EmailUnsubscribeService | The ESP service that sent the email
 | EmailUnsubscribeEmail | The email address that the email was sent to
 | EmailUnsubscribeEmailing | The emailing that the email was apart of
Ethnicities | Ethnicity | The ethnicity of the profile
EventAttendances | EventAttendanceOrganization | The organization that put on the event
 | EventAttendanceWhen | The datetime that the profile attended the event
 | EventAttendanceType | The type of event that the profile attended
 | EventAttendanceHost | The host of the event
 | EventAttendanceIsHost | Whether or not the profile hosted this event
EventRegistrations | EventRegistrationOrganization | The organization that put on the event
 | EventRegistrationWhen | The datetime that the profile registered for the event
 | EventRegistrationEvent | The event that was registered for
 | EventRegistrationEventDatetime | The datetime of the event that was registered for
 | EventRegistrationEventDescription | The description of the event that was registered for
 | EventRegistrationEventURL | A URL for a web page of the event that was registered for
 | EventRegistrationTicketName | The name of the ticket that was purchased during the registration
 | EventRegistrationDiscountCode | The discount code used during registration
ExternalIDs | ExternalID | The value of the external ID
 | ExternalIDType | The type of the external ID
Facebooks | FacebookID | The ID of the Facebook account
 | FacebookURL | The URL link to the Facebook account
Genders | Gender | The gender of the profile
Households | HeadOfHousehold | A flag indicating whether the profile is the head of the household
Images | Image | A URL to a photo of the profile
Incomes | Income | The annual income of the profile
Interests | Interest | The name of an interest that the profile has been tagged with
Investments | InvestmentAmount | How many dollars the investment is
 | InvestmentTopic | The topic of the business that the profile is invested in
 | CurrentlyInvested | A flag indicating whether or not the profile is currently invested
IPAddresses | IPAddress | The IP address that the profile was seen using
Issues | Issue | The issue that the profile has taken a position on
 | IssuePosition | The position that the profile took on the issue
Knocks | KnockOrganization | The organization that the door was knocked on behalf of
 | KnockWhen | When the door was knocked
 | KnockState | What happened when the door was knocked
 | KnockDayTrip | The DayTrip that the door was knocked during
 | KnockRoute | The route the volunteer was walking when they knocked the door
 | KnockVolunteer | The volunteer who knocked on the door
 | KnockSurveySubmissionID | The *Item* ID of the submission that was collected when the door was knocked
 | KnockFormSubmissionID | The *Item* ID of the form that was collected when the door was knocked
 | KnockSurvey | The survey that was assigned to the Volunteer to collect
LegislationPositions | LegislationPositionDateTaken | When the profile took this position on the legislation
 | LegislationPosition | Which position the profile took on the legislation
 | LegislationPositionLegislation | The legislation that the profile took a position on
 | LegislationPositionLegislationStartYear | The first year that the legislation was introduced
 | LegislationPositionLegislationEndYear | The year that the legislation was either passed into law or voted down
 | LegislationPositionLegislationDistrict | The political district that the legislation was introduced in
 | LegislationPositionGovernmentBodies | The governmental body that the legislation is being considered in
LegislatorContacts | LegislatorContactOrganization | The organization that the legislator was contacted on behalf of
 | LegislatorContactWhen | The datetime that the legislator was contacted
 | LegislatorContactLegislator | The legislator who was contacted
 | LegislatorContactLegislation | The legislation that the legislator was contacted about
 | LegislatorContactWhy | The reason that the profile contacted the legislator
 | LegislatorContactPlatform | The platform that the profile used to contact the legislator
LinkedIns | LinkedInID | The ID of the LinkedIn account linked to the profile
 | LinkedInURL | The URL to the LinkedIn account of the profile
MaritalStatuses | MaritalStatus | The marital status of the profile
Memberships | MemberOrganization | The organization that the profile has a membership to
 | MemberActive | A flag indicating whether the profile is an active member of the organization
 | MemberTitle | The title of the membership level of the profile
 | MemberJoined | The date that the profile joined the organization
 | MemberLeft | The date that the profile left the organization
 | MemberLeader | A flag indicating whether or not the profile is a leader in the organization
 | MemberDonor | A flag indicating whether or not the profile is a donor to the organization
MobileAppInstalls | MobileAppInstallOrganization | The organization whose mobile application was installed
 | MobileAppInstallWhen | The datetime that the mobile application was installed by the profile
 | MobileAppInstallCity | The city that the mobile application was installed in
 | MobileAppInstallRegion | The region that the mobile application was installed in
 | MobileAppInstallCountry | The country that the mobile application was installed in
MobileAppSessions | MobileAppSessionOrganization | The organization whose mobile application occurred a session
 | MobileAppSessionWhen | The datetime that the session occurred
 | MobileAppSessionDuration | The length of the session in seconds
 | MobileAppSessionScreens | An array of screen names in order that they were viewed during the session
 | MobileAppSessionCity | The city that the session occurred in
 | MobileAppSessionRegion | The region that the session occurred in
 | MobileAppSessionCountry | The country that the session occurred in 
Names | FullName | The whole name value in a single string
 | NameTitle | The title for the profile
 | FirstName | The first name of the profile
 | MiddleName | The middle name of the profile
 | LastName | The last name of the profile
 | NameSuffix | The suffix of the profile
NetWorths | NetWorth | The net worth of the profile
Notes | NoteWhen | The datetime that the note was entered about the profile
 | NoteAuthor | The name of the author who entered the note
 | Note | The body of the note itself, may contain HTML
Occupations | OccupationTitle | The job title of the profile during their occupation
 | OccupationEmployer | The name of the organization the profile worked for
 | OccupationEmployed | A flag indicating whether or not the profile is currently employed
 | OccupationIndustry | The industry that the profile worked in
 | OccupationStarted | The date that the profile started their employment
 | OccupationEnded | The date that the profile ended their employment
 | OccupationSalary | The salary that the profile drew during their occupation
OneOnOnes | OneOnOneOrganization | The organization that held the one on one with the profile
 | OneOnOneWhen | The datetime when the one on one took place
 | OneOnOneType | The type of one on one that occurred
 | OneOnOneUser | The user who held the one on one with the profile
 | OneOnOneRncRole | The role within the RNC that the user holds who held the one on one
 | OneOnOneHardAsk | A flag indicating whether or not the one on one contained a hard ask
 | OneOnOneHardAskAnswer | The answer given if the one on one contained a hard ask
 | OneOnOnePreviousContactDatetime | The datetime that the last previous contact occurred with the profile before this one on one
 | OneOnOneAnswerArray | A key-value object of answers to questions during the one on one
PageViews | PageViewOrganization | The organization that controlled the page that was viewed by the profile
 | PageViewWhen | The datetime that the page view occurred
 | PageViewImage | An image associated with the page viewed
 | PageViewURL | The URL of the page view
 | PageViewPageTitle | The title of the page that was viewed
 | PageViewPageDescription | The description of the page that was viewed
 | PageViewPageTopics | An array of topics attached to the page viewed
PhoneCalls | PhoneCallOrganization | The organization that the phone call was placed on behalf of
 | PhoneCallWhen | The datetime that the phone call was placed
 | PhoneCallPhoneCalling | The name of the phone call campaign that the call was placed under
 | PhoneCallNumber | The phone number that was called
 | PhoneCallResult | The result of the phone call placed
 | PhoneCallLength | The length of the phone call in seconds
 | PhoneCallType | The type of phone call
PhoneNumbers | PhoneNumber | The phone number for the profile
 | PhoneType | The type of phone that the number reaches
 | PhoneContact | The contact type of the phone number
 | PhoneUsable | The usability of the phone number to reach the profile
PhoneAddresses | Address1 | The first line of the address where the profile lives
 | Address2 | The second line of the address
 | Address3 | The third line of the address
 | AddressCity | The city where the profile lives
 | AddressRegion | The region where the profile lives
 | AddressPostalCode | The postal code where the profile lives
 | AddressCounty | The county where the profile lives
 | AddressCountry | The country where the profile lives
 | AddressLatitude | The latitude where this address is
 | AddressLongitude | The longitude where this address is
 | AddressContact | The contact type for this address
 | AddressUsable | The usability of the address to reach the profile
PoliticalOrientationScores | PoliticalOrientationScore | A numeric value of the intensity of political orientation
 | PoliticalOrientationScoreLabel | A text value of the way a profile is politically oriented
Religions | Religion | The religion of the profile
SocialEngages | SocialEngageOrganization | The organization that the profile engaged on social media
 | SocialEngageWhen | The datetime when the profile engaged the organization on social media
 | SocialEngageService | The service that the profile used to engage the organization
 | SocialEngageEngages | The specific account on social media that the profile engaged
SocialShares | SocialShareOrganization | The organization whose content the profile shared on social media
 | SocialShareWhen | The datetime when the profile shared the content on social media
 | SocialShareService | The service that the profile shared content on
 | SocialShareURL | The URL of the content that the profile shared
 | SocialShareTitle | The title of content that the profile shared
StateVoterRegistrations | StateRegisteredVoter | A flag indicating whether or not the profile is a registered voter
 | StateVoterID | The state voter ID of the profile
 | CountyVoterID | The county voter ID of the profile
 | OriginalVoterRegistrationDate | The original date the profile registered as a voter
 | LatestVoterRegistrationDate | The latest date the profile registered to vote
 | VoterRegistrationParty | The party that the profile is registered to vote as
Students | Student | A flag indicating whether or not the profile is a student
Submissions | SubmissionOrganization | The organization whose form was submitted
 | SubmissionWhen | The datetime when the form was submitted
 | SubmissionForm | The form that was submitted
 | SubmissionFormType | The specific type of form that was submitted
 | SubmissionFormSubTypes | An array of sub-types that the form belongs to
 | SubmissionResponses | An array of question and answers objects that represent all the fields in the submission
ThirdPartySubmissions | ThirdPartySubmissionOrganization | The organization whose form was submitted
 | ThirdPartySubmissionWhen | The datetime that the submission occurred
 | ThirdPartySubmissionURL | The URL that the third party form was submitted on
 | ThirdPartySubmissionResponses | An array of question and answers objects, each representing a field in the submitted form
Twitters | TwitterID | The account ID of the Twitter account associated with the profile
 | TwitterURL | The URL to the Twitter account page
Veterans | Veteran | A flag indicating whether or not the profile is a veteran
VideoPlays | VideoPlayOrganization | The organization whose web page embedded the video played
 | VideoPlayWhen | The datetime that the video was played
 | VideoPlayService | The service that the video was uploaded to
 | VideoPlayTitle | The title of the video played
 | VideoPlayURL | The URL of the video played
 | VideoPlayStarted | The starting timestamp of the video
 | VideoPlayStopped | The timestamp when the profile stopped watching the video
 | VideoPlayDuration | The total duration of the video in seconds
 | VideoPlayFinished | A flag indicating whether or not the profile finished the video
VoterRegistrationInteractions | VoterRegistrationInteractionOrganization | The organization that registered the voter
 | VoterRegistrationInteractionWhen | The datetime that the profile was registered to vote
 | VoterRegistrationInteractionParty | The political party that the profile was registered to vote for
 | VoterRegistrationInteractionType | The type of voter registration that the profile filled out
 | VoterRegistrationInteractionPetitionType | The petition type that the profile signed before they were registered to vote
 | VoterRegistrationInteractionLocation | The name of the location or event that the voter registration was filled out at
 | VoterRegistrationInteractionLocationType | The type of location that the voter registration was filled out at
 | VoterRegistrationInteractionTurnedIn | The date that the organization turned in the registration form to the state
 | VoterRegistrationInteractionLead | The collection lead for the voter registration
 | VoterRegistrationInteractionNonStafferCollector | The collector who collected the registration form if not done by the lead
 | VoterRegistrationInteractionRole | The role of the collector
Votes | VotedWhen | The year that the vote was cast
 | VotedElection | The election type that the profile voted in
 | VotedRegion | The region that the election was held in
 | Voted | A flag indicating whether or not the profile had voted in the election
 | VotedEarly | An object representing whether or not the profile voted early
 | VotedAbsentee | An object representing whether or not the profile voted absentee
 | VotedPrimaryParty | The primary party ballot the profile used