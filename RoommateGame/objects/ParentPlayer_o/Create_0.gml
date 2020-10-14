//For animation frame speeds
image_speed = .25;

/* How fast the player moves */
moveSpeed = 3;

/* The player's hunger level. 1 is Full, 2 is Hungry, 3 is Starving. 
While Full the player can act normally, while Hungry they can't Relax,
while Starving they can't perform any actions besides Prepare Meal*/
maxHungerLevel = 3;
minHungerLevel = 1;
hungerLevel = 1;

/* String representation of the player's hunger level (to draw on the UI) */
hungerLvlString = "Sated";

/* The player's Action Points, represented in the Action Bar.
AP are spent to perform various types of actions*/
maxActionPoints = 2000;
minActionPoints = 0;
actionPoints = 2000;

/* The player's Stress Points, represented in the Stress Bar(?).
Stress Points accumulate from performing actions, and can only be 
decreased by doing something relaxing (like sitting on the couch) */
maxStressPoints = 100;
minStressPoints = 0;
stressPoints = 0;

/* Determines whether or not the player has entered Panicked status. 
True when Stress Points hit the max of 1000, otherwise false */ 
panicked = false;

/* Whether or not the player is performing actions right now (Moving and Doing Things) */
isActing = false;

/* Whether or not the player is currently partying*/
isPartying = false;

/* Whether or not the player meets the proper prerequisites to interact with a task 
(prereqs vary from task to task) */
canInteract = false;

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
grade = "";

//action key that each player uses
actionKey = vk_space;

//Key for activating PARTY TIME, used by either player
partyKey = vk_space;