# Data Dictionary

## Stand Forms

| Name                   | Attribute Type                             | Description                                          |
| ---------------------- | ------------------------------------------ | ---------------------------------------------------- |
| Team Number            | number                                     | number of the team being scouted                     |
| Match ID               | number                                     | TBA ID of match being scouting                       |
| Left Black Line        | enum (Yes, No)                             | whether the bot left the starting line in autonomous |
| Auto Coral Level 1     | number                                     | number of coral scored in the trough in autonomous   |
| Auto Coral Level 2     | number                                     | number of coral scored on low posts in autonomous    |
| Auto Coral Level 3     | number                                     | number of coral scored on mid posts in autonomous    |
| Auto Coral Level 4     | number                                     | number of coral scored on high posts in autonomous   |
| Auto Algae Processed   | number                                     | number of algae processed in autonomous              |
| Auto Algae Netted      | number                                     | number of algae netted in the barge in autonomous    |
| Teleop Coral Level 1   | number                                     | number of coral scored in the trough in teleop       |
| Teleop Coral Level 2   | number                                     | number of coral scored on low posts in teleop        |
| Teleop Coral Level 3   | number                                     | number of coral scored on mid posts in teleop        |
| Teleop Coral Level 4   | number                                     | number of coral scored on high posts in teleop       |
| Teleop Algae Processed | number                                     | number of algae processed in teleop                  |
| Teleop Algae Netted    | number                                     | number of algae netted in the barge in teleop        |
| Cage Climb             | enum (None, Parked, ShallowCage, DeepCage) | robot end game position                              |
