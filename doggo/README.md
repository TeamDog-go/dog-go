# dog-go Documentation

Version 1
Date: 6/25/18
Authors: cdmackeyfree / ppreyer

:::info
**Table Information** 
User 
Category - the type of source (breeder, shelter etc)
Question
Option - all possible answers for a particular question
Answer - the option selected by the user 
Survey - collection of all of the questions and answers chosen in one session
:::

## **1. Show all Questions**
**Request**
GET https://polar-castle-14061.herokuapp.com/questions.json/

**Response**
200 = Response will be an object/ array containing a list of question objects. Questions structure: 
```JSON

{
    "questions": [
        {
            "id": 1,
            "content": "Are you allowed to visit where the puppies are kept?",
            "category": 1,
            "options": [
                {
                    "id": 1,
                    "question_id": 1,
                    "o_content": "Yes",
                    "o_color": "green",
                    "created_at": "2018-07-05T15:58:42.928Z",
                    "updated_at": "2018-07-05T15:58:42.928Z",
                    "avail_points": 10,
                    "feedback_text": "Yes! This is the most important step in getting a dog! Visiting is the only way to know for sure what kind of place a puppy is coming from. It’s great that this breeder welcomes you to visit the puppies!"
                },
                {
                    "id": 2,
                    "question_id": 1,
                    "o_content": "No",
                    "o_color": "red",
                    "created_at": "2018-07-05T15:58:42.930Z",
                    "updated_at": "2018-07-05T15:58:42.930Z",
                    "avail_points": -100,
                    "feedback_text": "Uh oh… Visiting is the only way to know for sure what kind of place a puppy is coming from. Good breeders insist potential owners visit their puppies and will welcome you to see where they are raised. If this breeder will not let you visit, what could they be hiding? (Don’t be fooled by claims of “We don’t want our puppies to get sick”, walk away.)"
                },
                {
                    "id": 3,
                    "question_id": 1,
                    "o_content": "I don't know",
                    "o_color": "yellow",
                    "created_at": "2018-07-05T15:58:42.933Z",
                    "updated_at": "2018-07-05T15:58:42.933Z",
                    "avail_points": -10,
                    "feedback_text": "This is the most important step in getting a dog! Visiting is the only way to know for sure what kind of place a puppy is coming from. Definitely find out whether or not this is allowed. (And if it’s not, start looking somewhere else!)"
                }
            ]
        },
        {
            "id": 2,
            "content": "Does the breeder ship puppies via airplane?",
            "category": 1,
            "options": [
                {
                    "id": 4,
                    "question_id": 2,
                    "o_content": "Yes",
                    "o_color": "red",
                    "created_at": "2018-07-05T15:58:42.937Z",
                    "updated_at": "2018-07-05T15:58:42.937Z",
                    "avail_points": -30,
                    "feedback_text": "Yikes! An unsupervised flight is a potentially scary and dangerous experience. Heatstroke and crate phobias are real risks. (Housetraining is extra difficult if this happens!) Check out other breeders or shelters that don’t ship their precious pups as cargo."
                },
                {
                    "id": 5,
                    "question_id": 2,
                    "o_content": "No",
                    "o_color": "green",
                    "created_at": "2018-07-05T15:58:42.939Z",
                    "updated_at": "2018-07-05T15:58:42.939Z",
                    "avail_points": 10,
                    "feedback_text": "Great! Young puppies are in a period of critical development. A flight is a potentially scary and dangerous experience. Heatstroke and crate phobias are real risks. Not shipping young pups is a great breeder decision!"
                },
                {
                    "id": 6,
                    "question_id": 2,
                    "o_content": "I don't know",
                    "o_color": "yellow",
                    "created_at": "2018-07-05T15:58:42.941Z",
                    "updated_at": "2018-07-05T15:58:42.941Z",
                    "avail_points": 0,
                    "feedback_text": "Young puppies are in a period of critical development. A flight is a potentially scary and dangerous experience. Heatstroke and crate phobias are real risks. Steer clear of any breeder who offers to ship you a pup!"
                }
            ]
        },
        {
            "id": 3,
            "content": "Is the breeder United States Department of Agriculture (USDA) licensed?",
            "category": 1,
            "options": [
                {
                    "id": 7,
                    "question_id": 3,
                    "o_content": "Yes",
                    "o_color": "red",
                    "created_at": "2018-07-05T15:58:42.946Z",
                    "updated_at": "2018-07-05T15:58:42.946Z",
                    "avail_points": -100,
                    "feedback_text": "This surprises a lot of people! If a breeder is USDA licensed, they are a puppy farm. (AKA puppy mill) Buying a pup from a farm/mill allows these businesses to continue and puts your pup at high risk for health and behavior problems."
                },
                {
                    "id": 8,
                    "question_id": 3,
                    "o_content": "No",
                    "o_color": "green",
                    "created_at": "2018-07-05T15:58:42.948Z",
                    "updated_at": "2018-07-05T15:58:42.948Z",
                    "avail_points": 10,
                    "feedback_text": "Excellent! The USDA oversees farms. If a breeder is USDA licensed, they are a puppy farm! Not having this license is a GOOD thing."
                },
                {
                    "id": 9,
                    "question_id": 3,
                    "o_content": "I don't know",
                    "o_color": "yellow",
                    "created_at": "2018-07-05T15:58:42.950Z",
                    "updated_at": "2018-07-05T15:58:42.950Z",
                    "avail_points": 0,
                    "feedback_text": "The USDA oversees farms. If a breeder is USDA licensed, they are a puppy farm! Buying a pup from a farm/mill allows these businesses to continue and puts your pup at high risk for health and behavior problems. Keep your eyes open for this and steer clear of any ‘breeders’ with this license."
                }
            ]
        },
        {
            "id": 4,
            "content": "Where are the puppies being raised?",
            "category": 1,
            "options": [
                {
                    "id": 10,
                    "question_id": 4,
                    "o_content": "In the home with the family",
                    "o_color": "green",
                    "created_at": "2018-07-05T15:58:42.954Z",
                    "updated_at": "2018-07-05T15:58:42.954Z",
                    "avail_points": 10,
                    "feedback_text": "Woo hoo! Puppies need good experiences (socialization) with the things they will encounter as adults. They can grow up to be fearful of things they aren’t used to. Being raised in a home is the ideal way to prepare for life as a family pet."
                }
            ]
        }
    ]
}
```

## **2. Show one Question**
**Request**
GET https://polar-castle-14061.herokuapp.com/questions/(:id).json

**Response**
200 = Response includes question object, including an array of its associated options each of which has a feedback text section:
``` JSON

    {
    "question": {
        "id": 1,
        "content": "Are you allowed to visit where the puppies are kept?",
        "category": 1,
        "options": [
            {
                "id": 1,
                "question_id": 1,
                "o_content": "Yes",
                "o_color": "green",
                "created_at": "2018-07-05T15:58:42.928Z",
                "updated_at": "2018-07-05T15:58:42.928Z",
                "avail_points": 10,
                "feedback_text": "Yes! This is the most important step in getting a dog! Visiting is the only way to know for sure what kind of place a puppy is coming from. It’s great that this breeder welcomes you to visit the puppies!"
            },
            {
                "id": 2,
                "question_id": 1,
                "o_content": "No",
                "o_color": "red",
                "created_at": "2018-07-05T15:58:42.930Z",
                "updated_at": "2018-07-05T15:58:42.930Z",
                "avail_points": -100,
                "feedback_text": "Uh oh… Visiting is the only way to know for sure what kind of place a puppy is coming from. Good breeders insist potential owners visit their puppies and will welcome you to see where they are raised. If this breeder will not let you visit, what could they be hiding? (Don’t be fooled by claims of “We don’t want our puppies to get sick”, walk away.)"
            },
            {
                "id": 3,
                "question_id": 1,
                "o_content": "I don't know",
                "o_color": "yellow",
                "created_at": "2018-07-05T15:58:42.933Z",
                "updated_at": "2018-07-05T15:58:42.933Z",
                "avail_points": -10,
                "feedback_text": "This is the most important step in getting a dog! Visiting is the only way to know for sure what kind of place a puppy is coming from. Definitely find out whether or not this is allowed. (And if it’s not, start looking somewhere else!)"
            }
        ]
    }
}

```

## **3. Delete one Question**
**Request:**
DELETE https://polar-castle-14061.herokuapp.com/questions/(:id).json

**Admin Acess Only**

## **4. Create one Question**
**Request:**
POST https://polar-castle-14061.herokuapp.com/questions.json

**Response:**
200 = creates one question and returns the following structure. 

``` JSON
{
    "question": {
        "id": 1,
        "content": "Are you allowed to visit where the puppies are kept?",
        "category": 1,
        "options": []
    }
}
```

## **5. Show one Answer**
**Request:**
GET https://polar-castle-14061.herokuapp.com/answers/(:id).json

**Response:**
Success, returns one answer in the following structure.

```JSON
{
    "answers": {
        "id": 1,
        "option_id": 2,
        "survey_id": 1
    }
}
```

## **6. Create one Answer**
**Request:**
POST https://polar-castle-14061.herokuapp.com/answers.json

**Response:**
200 = creates one answer and returns the following structure.

``` JSON
{
    "answers": {
        "id": 1,
        "option_id": 2,
        "survey_id": 1
    }
}
```

## **7. Delete one Answer**
**Request:**
DELETE https://polar-castle-14061.herokuapp.com/answers/(:id).json

**Admin Acess Only**

## **8. Create a User**
**Request:**
POST https://polar-castle-14061.herokuapp.com/users.json

**Required Params:** 
`username:string`
`password:string`

**Response:**
200 = creates one user and returns the following structure.

``` JSON
{
    "username": "Maria",
    "id": 4,
    "admin": false
}

```

## **9. Show one User**
**Request:**
GET https://polar-castle-14061.herokuapp.com/users/(:id).json


**Response:**
201 = returns the following structure.

``` JSON
{
    "username": "Maria",
    "id": 4,
    "admin": false
}

```

## **10. Delete one User**
**Request:**
DELETE https://polar-castle-14061.herokuapp.com/users/(:id).json

**Admin Access Only**

## **11. Show all Users**
**Request:**
GET https://polar-castle-14061.herokuapp.com/users.json

**Response:**
200 = returns the following structure.
``` JSON
[
    {
        "username": "Paul",
        "id": 1,
        "admin": false
    },
    {
        "username": "Juan",
        "id": 2,
        "admin": false
    },
    {
        "username": "Erika",
        "id": 3,
        "admin": false
    },
    {
        "username": "Maria",
        "id": 4,
        "admin": false
    }
]

```

## **12. Login one User**
**Request:**
POST https://polar-castle-14061.herokuapp.com/sessions.json

**Required Params:** 
`username:string`
`password:string`

**Response:**
200 = logs in one user and returns the following structure.

``` JSON
{
    "username": "Maria",
    "id": 4,
    "admin": false
}

```
## **13. Log out one User**
**Request:**
DELETE https://polar-castle-14061.herokuapp.com/sessions/(:id).json

## **14. Create a New Option**
**Request**
POST https://polar-castle-14061.herokuapp.com/options.json


**Result:**
200 creates a new result and returns the following structure

``` JSON
{
    "id": 1,
    "question_id": 1,
    "o_content": "Yes",
    "o_color": "green",
    "created_at": "2018-07-05T15:58:42.928Z",
    "updated_at": "2018-07-05T15:58:42.928Z",
    "avail_points": 10,
    "feedback_text": "Yes! This is the most important step in getting a dog! Visiting is the only way to know for sure what kind of place a puppy is coming from. It’s great that this breeder welcomes you to visit the puppies!"
}

```
## **15. Delete one Option**
**Request:**
DELETE https://polar-castle-14061.herokuapp.com/options/(:id).json

**Admin Access only**

## **16. Show one Result**
**Request**
GET https://polar-castle-14061.herokuapp.com/options/(:id).json


**Result:**
200 shows a new result and returns the following structure

``` JSON
{
    "id": 1,
    "question_id": 1,
    "o_content": "Yes",
    "o_color": "green",
    "created_at": "2018-07-05T15:58:42.928Z",
    "updated_at": "2018-07-05T15:58:42.928Z",
    "avail_points": 10,
    "feedback_text": "Yes! This is the most important step in getting a dog! Visiting is the only way to know for sure what kind of place a puppy is coming from. It’s great that this breeder welcomes you to visit the puppies!"
}

```

## **17. Show All Options**
**Request**
GET https://polar-castle-14061.herokuapp.com/options.json


``` JSON
{
    "options": [
        {
            "id": 1,
            "content": "Yes",
            "o_color": "green",
            "avail_points": 10,
            "feedback_text": "Yes! This is the most important step in getting a dog! Visiting is the only way to know for sure what kind of place a puppy is coming from. It’s great that this breeder welcomes you to visit the puppies!"
        },
        {
            "id": 2,
            "content": "No",
            "o_color": "red",
            "avail_points": -100,
            "feedback_text": "Uh oh… Visiting is the only way to know for sure what kind of place a puppy is coming from. Good breeders insist potential owners visit their puppies and will welcome you to see where they are raised. If this breeder will not let you visit, what could they be hiding? (Don’t be fooled by claims of “We don’t want our puppies to get sick”, walk away.)"
        },
        {
            "id": 3,
            "content": "I don't know",
            "o_color": "yellow",
            "avail_points": -10,
            "feedback_text": "This is the most important step in getting a dog! Visiting is the only way to know for sure what kind of place a puppy is coming from. Definitely find out whether or not this is allowed. (And if it’s not, start looking somewhere else!)"
        },
        {
            "id": 4,
            "content": "Yes",
            "o_color": "red",
            "avail_points": -30,
            "feedback_text": "Yikes! An unsupervised flight is a potentially scary and dangerous experience. Heatstroke and crate phobias are real risks. (Housetraining is extra difficult if this happens!) Check out other breeders or shelters that don’t ship their precious pups as cargo."
        },
        {
            "id": 5,
            "content": "No",
            "o_color": "green",
            "avail_points": 10,
            "feedback_text": "Great! Young puppies are in a period of critical development. A flight is a potentially scary and dangerous experience. Heatstroke and crate phobias are real risks. Not shipping young pups is a great breeder decision!"
        },
        {
            "id": 6,
            "content": "I don't know",
            "o_color": "yellow",
            "avail_points": 0,
            "feedback_text": "Young puppies are in a period of critical development. A flight is a potentially scary and dangerous experience. Heatstroke and crate phobias are real risks. Steer clear of any breeder who offers to ship you a pup!"
        },
        {
            "id": 7,
            "content": "Yes",
            "o_color": "red",
            "avail_points": -100,
            "feedback_text": "This surprises a lot of people! If a breeder is USDA licensed, they are a puppy farm. (AKA puppy mill) Buying a pup from a farm/mill allows these businesses to continue and puts your pup at high risk for health and behavior problems."
        },
        {
            "id": 8,
            "content": "No",
            "o_color": "green",
            "avail_points": 10,
            "feedback_text": "Excellent! The USDA oversees farms. If a breeder is USDA licensed, they are a puppy farm! Not having this license is a GOOD thing."
        },
        {
            "id": 9,
            "content": "I don't know",
            "o_color": "yellow",
            "avail_points": 0,
            "feedback_text": "The USDA oversees farms. If a breeder is USDA licensed, they are a puppy farm! Buying a pup from a farm/mill allows these businesses to continue and puts your pup at high risk for health and behavior problems. Keep your eyes open for this and steer clear of any ‘breeders’ with this license."
        }
    ]
}
    
```

## **18. Create a New Survey**
**Request:**
POST https://polar-castle-14061.herokuapp.com/surveys.json


**Result:**
200 creates a new survey and returns the following structure.

``` JSON
    {
    "survey": {
        "id": 6,
        "user_id": 1,
        "questions": [],
        "answers": [],
        "feedbacks": [],
        "result": null
    }
}
```

## **19. Show one Survey**
**Request:**
GET https://polar-castle-14061.herokuapp.com/surveys/(:id).json


**Result:**
200 creates a new survey and returns the following structure.

```JSON
{
    "surveys": [
        {
            "id": 1,
            "user_id": 1,
            "answers": [
                {
                    "option_id": 2,
                    "option_question_id": 1,
                    "option_content": "No",
                    "option_color": "red",
                    "option_points": -100,
                    "option_feedback": "Uh oh… Visiting is the only way to know for sure what kind of place a puppy is coming from. Good breeders insist potential owners visit their puppies and will welcome you to see where they are raised. If this breeder will not let you visit, what could they be hiding? (Don’t be fooled by claims of “We don’t want our puppies to get sick”, walk away.)"
                },
                {
                    "option_id": 6,
                    "option_question_id": 2,
                    "option_content": "I don't know",
                    "option_color": "yellow",
                    "option_points": 0,
                    "option_feedback": "Young puppies are in a period of critical development. A flight is a potentially scary and dangerous experience. Heatstroke and crate phobias are real risks. Steer clear of any breeder who offers to ship you a pup!"
                }
            ]
        }
    ]
}
```

## **20. Show all Surveys**
**Request**
GET https://polar-castle-14061.herokuapp.com/surveys.json/

**Response**
200 = Response will be an object/ array containing a list of survey objects. Surveys structure:
```JSON
{
    "surveys": [
        {
            "id": 1,
            "user_id": 1,
            "answers": [
                {
                    "option_id": 2,
                    "option_question_id": 1,
                    "option_content": "No",
                    "option_color": "red",
                    "option_points": -100,
                    "option_feedback": "Uh oh… Visiting is the only way to know for sure what kind of place a puppy is coming from. Good breeders insist potential owners visit their puppies and will welcome you to see where they are raised. If this breeder will not let you visit, what could they be hiding? (Don’t be fooled by claims of “We don’t want our puppies to get sick”, walk away.)"
                },
                {
                    "option_id": 6,
                    "option_question_id": 2,
                    "option_content": "I don't know",
                    "option_color": "yellow",
                    "option_points": 0,
                    "option_feedback": "Young puppies are in a period of critical development. A flight is a potentially scary and dangerous experience. Heatstroke and crate phobias are real risks. Steer clear of any breeder who offers to ship you a pup!"
                }
            ]
        }
    ]
}
```

## **21. Delete a Survey**
**Request:**
DELETE https://polar-castle-14061.herokuapp.com/surveys/(:id).json

**Admin Access only**

