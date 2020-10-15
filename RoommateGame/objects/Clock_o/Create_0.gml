//Timer class

//place holder variable for the number of days passed in the MONTH
day = 28;

/* The amount of weeks passed in the current month */
weeksPassedThisMonth = 0;

/* The amount of months passed. Once the max amount (TBD) passes, the game ends
and players are shown their Roommate Scores */
monthsPassed = 0;

/* Turns true when a week has passed and rent must be calculated, otherwise false*/
weekPassed = false;

//total time that takes an hour to pass
timeRemaining = 0.1;

//current month when the game begins
currentMonthIndex = 0;

//list of months in the game
months = ["July", "August"];

currentMonth = months[currentMonthIndex];

//keeps track of the day of the week, not month
weekDay = 0;

//clockStartTime = 0;

/* The current level of trash that has been built up each day. Trash Level 0 means there's no trash to take out,
and each additional level of trash will require more Action Points and more time to take out */
trashLevel = 0;

//variables for the clock
watchStartTime = 8;
currentTime = watchStartTime;

endOfDay = false;

//this variable controls the frame rate
room_speed = 60;
alarm[0] = (room_speed * timeRemaining);
