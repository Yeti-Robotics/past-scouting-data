# Data Dictionary

## Stand Forms

| Name                   | Attribute Type    | Description                                                    |
| ---------------------- | ----------------- | -------------------------------------------------------------- |
| \_id                   | string (UUID)     | user's id                                                      |
| teamNumber             | number            | number of the team being scouted                               |
| matchNumber            | number            | match number being scouted                                     |
| scouter                | string (UUID)     | user's id                                                      |
| autoUpperBallsScored   | number            | number of upper balls scored during autonomous                 |
| autoUpperBallsMissed   | number            | number of upper balls missed during autonomous                 |
| autoLowBallsScored     | number            | number of low balls scored during autonomous                   |
| autoLowBallsMissed     | number            | number of low balls missed during autonomous                   |
| teleopUpperBallsScored | number            | number of upper balls scored during teleop                     |
| teleopUpperBallsMissed | number            | number of upper balls missed during teleop                     |
| teleopLowBallsScored   | number            | number of low balls scored during teleop                       |
| teleopLowBallsMissed   | number            | number of low balls missed during teleop                       |
| preload                | boolean           | whether the team had a piece loaded at the start of the match  |
| initiationLine         | boolean           | whether the team crossed the initiation line during autonomous |
| endPosition            | number            | the end position of the team at the end of the match           |
| defense                | number            | the defense rating of the team                                 |
| notes                  | string            | any additional notes about the team's performance              |
| setNumber              | number            | the set number of the match                                    |
| approved               | boolean           | whether the data has been approved by the scouting lead        |
| createdAt              | string (ISO 8601) | the date and time the data was created                         |
| updatedAt              | string (ISO 8601) | the date and time the data was last updated                    |

## Team Data

| Name                   | Attribute Type | Description                                        |
| ---------------------- | -------------- | -------------------------------------------------- |
| teamNumber             | number         | number of the team                                 |
| teamName               | string         | name of the team                                   |
| avgUpperAuto           | number         | % frequency of upper ball scored in auto           |
| avgLowerAuto           | number         | % frequency of lower ball scored in auto           |
| avgUpperTeleop         | number         | % frequency of upper ball scored in teleop         |
| avgLowerTeleop         | number         | % frequency of lower ball scored in teleop         |
| endPosition            | number         | average end position of the team                   |
| avgUpperBallsScored    | number         | average number of upper balls scored               |
| avgLowBallsScored      | number         | average number of low balls scored                 |
| avgPenalties           | number or null | average number of penalties (null if no penalties) |
| avgDefense             | number         | average defense rating of the team                 |
| avgAutoScore           | number         | average auto score of the team                     |
| avgTeleopScore         | number         | average teleop score of the team                   |
| teleopUpperBallsScored | number         | total number of upper balls scored in teleop       |
| teleopLowBallsScored   | number         | total number of low balls scored in teleop         |
| autoUpperBallsScored   | number         | total number of upper balls scored in auto         |
| autoLowBallsScored     | number         | total number of low balls scored in auto           |
| upperBallsScored       | number         | total number of upper balls scored                 |
| lowBallsScored         | number         | total number of low balls scored                   |
| bestEndPosition        | string         | team's best ending position                        |
