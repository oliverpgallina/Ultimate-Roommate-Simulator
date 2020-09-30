/* How fast the player moves */
moveSpeed = 3;

/* The player's Action Points, represented in the Action Bar.
AP are spent to perform various types of actions*/
actionPoints = 2000;

/* The player's Stress Points, represented in the Stress Bar(?).
Stress Points accumulate from performing actions, and can only be 
decreased by doing something relaxing (like sitting on the couch) */
stressPoints = 0;

/* Determines whether or not the player has entered Panicked status. 
True when Stress Points hit the max of 1000, otherwise false */ 
panicked = false;

/* Whether or not the player is performing actions right now (Moving and Doing Things) */
isActing = false;

/* Whether or not the player is currently regenerating AP (and thus unable to move */
regenerating = false;

/* Whether or not the player is currently reducing their Stress Points gradually */
relievingStress = false;

/* The total rent money due at the end of each week */
rentDue = 1800;

/* The total amount of money shared between both players */
totalMoney = 0;

/* The amount of "study points" for this player, an invisible value that goes up when studying.
As it increases the player will get better grades at the end of each week */
studyPoints = 0;

/* The grade this player gets at the end of a week 

uhhh so players get grades at the end of each week so maybe all their grades
over the whole semester should be stored somewhere like an array or something */
grade = "Z";