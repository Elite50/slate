
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
  "Ethnicities" : [
    {
      "id" : 1,
      "Ethnicity" : {
        "id" : 1,
        "value" : "Caucasian"
      }
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
        "value": "Ferdinand Magellan"
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
      },
      "OneOnOneCollectionLead" : {
        "id" : 2,
        "value" : "King Manuel"
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
  "PetitionSignatures" : [
    {
      "id" : "8586a40d-01be-4bb3-b01b-756ad5954ee7",
      "PetitionSignatureOrganization" : {
        "id" : 1,
        "value" : "Modern Notion"
      },
      "PetitionSignatureWhen" : "2015-01-01T12:00:00+00",
      "PetitionSignatureType" : {
        "id" : "2nd-amendment",
        "value" : "2nd Amendment"
      },
      "PetitionSignatureLocationType" : {
        "id" : "event",
        "value" : "Event"
      },
      "PetitionSignatureLocation" : "Coronation of King Manuel",
      "PetitionSignatureCollectionLead" : {
        "id" : 1,
        "value" : "King Manuel"
      },
      "PetitionSignatureCollector" : {
        "id" : 2,
        "value" : "Ferdinand Magellan"
      }      
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
      "SubmissionUser" : {
        "id" : 1,
        "service" : "crowdskout",
        "value" : "George Yates"
      },
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
  "Veterans" : [
    {
      "id" : 1,
      "Veteran" : {
        "id" : "yes",
        "value" : "Yes"
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
Children | ChildAge | The age of the child this profile has
 | ChildGender | The gender of the child this profile has
CrowdskoutScores | CrowdskoutScore | A numeric representation of the level of engagement of the profile with the client
 | CrowdskoutScoreLabel | A string representation of the level of engagement
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
Ethnicities | Ethnicity | The ethnicity of the profile
ExternalIDs | ExternalID | The value of the external ID
 | ExternalIDType | The type of the external ID
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
MaritalStatuses | MaritalStatus | The marital status of the profile
Memberships | MemberOrganization | The organization that the profile has a membership to
 | MemberActive | A flag indicating whether the profile is an active member of the organization
 | MemberTitle | The title of the membership level of the profile
 | MemberJoined | The date that the profile joined the organization
 | MemberLeft | The date that the profile left the organization
 | MemberLeader | A flag indicating whether or not the profile is a leader in the organization
 | MemberDonor | A flag indicating whether or not the profile is a donor to the organization
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
 | OneOnOneCollectionLead | A poser object of the user who led the collection of this one on one, may be the same as OneOnOneUser
PageViews | PageViewOrganization | The organization that controlled the page that was viewed by the profile
 | PageViewWhen | The datetime that the page view occurred
 | PageViewImage | An image associated with the page viewed
 | PageViewURL | The URL of the page view
 | PageViewPageTitle | The title of the page that was viewed
 | PageViewPageDescription | The description of the page that was viewed
 | PageViewPageTopics | An array of topics attached to the page viewed
PetitionSignatures | PetitionSignatureOrganization | The organization that collected the petition signature
 | PetitionSignatureWhen | The datetime that the petition was signed
 | PetitionSignatureType | The type of petition that was signed
 | PetitionSignatureLocationType | The type of location where the petition was signed
 | PetitionSignatureLocation | The name of the location or event where the petition was signed
 | PetitionSignatureCollectionLead | A poser object representing the individual who led the collection of this petition signature
 | PetitionSignatureCollector | The actual person who collected the signature, may be the same as PetitionSignatureCollectionLead
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
Students | Student | A flag indicating whether or not the profile is a student
Submissions | SubmissionOrganization | The organization whose form was submitted
 | SubmissionWhen | The datetime when the form was submitted
 | SubmissionForm | The form that was submitted
 | SubmissionFormType | The specific type of form that was submitted
 | SubmissionFormSubTypes | An array of sub-types that the form belongs to
 | SubmissionResponses | An array of question and answers objects that represent all the fields in the submission
 | SubmissionUser | The Crowdskout user who collected or entered the form submission 
Veterans | Veteran | A flag indicating whether or not the profile is a veteran
Votes | VotedWhen | The year that the vote was cast
 | VotedElection | The election type that the profile voted in
 | VotedRegion | The region that the election was held in
 | Voted | A flag indicating whether or not the profile had voted in the election
 | VotedEarly | An object representing whether or not the profile voted early
 | VotedAbsentee | An object representing whether or not the profile voted absentee
 | VotedPrimaryParty | The primary party ballot the profile used