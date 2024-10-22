
//Start up the BGM
audio_play_sound(BGM_snd, 0, true);

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
maxStressPoints = 1000;
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

/* Whether or not players just finished partying (used for the Noise Complaint message */ 
partied = false;

/* The total rent money due at the end of each week (changes based on the situation) */
rentDue = 1300;

/* The base amount of rent due */
//UNCOMENT IF THERE ARE PROBLEMS WITH RENT 
//baseRent = 1300;

/* The noise complaint fee (applied after partying) */
noiseComplaintFee = 70;

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

//translates to a roommate score at the end of the game
//scorePoints = 0;

//message to be displayed when the player cannot perform a task
playerMessage = "";

displayMessage = false;

//for the step function
otherPlayerIsRelievingStress = false;

//otherPlayerIsInteracting = false;
up = ord("O");
down = ord("l");
left = ord("l");
right = ord("y");

image_speed = 0;

AnimRight = Player1_walk_right_sp;
AnimLeft = Player1_walk_sp;
AnimIdle = Player1_sp;

partyMsgShow = true;
timerHasStarted = false;