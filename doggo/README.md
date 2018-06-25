# README

# dog-go Documentation

Version 1
Date: 6/25/18
Authors: cdmackeyfree / ppreyer

## **1. Get all Questions**
**Request**
GET https://polar-castle-14061.herokuapp.com/questions.json/questions.json

**Response**
200 = Response will be an object/ array containing a list of question objects. Questions structure: 
```JSON

{
  "questions": [
    {
      "id": 1,
      "content": "What's up doc?",
      "answer": [
        {
          "id": 1,
          "value": true,
          "question_id": 1,
          "created_at": "2018-06-25T18:41:45.801Z",
          "updated_at": "2018-06-25T18:41:45.801Z"
        }
      ]
    },
    {
      "id": 2,
      "content": "What's goin on?",
      "answer": [
        {
          "id": 2,
          "value": false,
          "question_id": 2,
          "created_at": "2018-06-25T18:41:45.810Z",
          "updated_at": "2018-06-25T18:41:45.810Z"
        }
      ]
    },
    {
      "id": 3,
      "content": "How's the weather?",
      "answer": [
        {
          "id": 3,
          "value": null,
          "question_id": 3,
          "created_at": "2018-06-25T18:41:45.820Z",
          "updated_at": "2018-06-25T18:41:45.820Z"
        }
      ]
    }
  ]
}
```

## **2. Get one Question**
**Request**
GET https://polar-castle-14061.herokuapp.com/questions/(:id)

**Response**
200 = Response includes question object, including an array of its associated answers:
``` JSON
{
  "question": {
    "id": 1,
    "content": "What's up doc?",
    "answer": [
      {
        "id": 1,
        "value": true,
        "question_id": 1,
        "created_at": "2018-06-25T18:41:45.801Z",
        "updated_at": "2018-06-25T18:41:45.801Z"
      }
    ]
  }
}

```

## **3. Get one Answer**
**Request:**
https://polar-castle-14061.herokuapp.com/answers/(:id)

**Response:**
```JSON
{
  "answer": {
    "id": 1,
    "value": true,
    "question_id": 1
  }
}
```
