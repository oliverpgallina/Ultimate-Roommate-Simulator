//Timer class

//place holder variable for the number of days passed
day = 1;

/* Turns true when a week has passed and rent must be calculated, otherwise false*/

weekPassed = false;
//total time until it reaches 0
timeRemaining = 5;

clockStartTime = 0;

//variables for the clock
watchStartTime = 8;
currentTime = watchStartTime;

endOfDay = false;

//this variable controls the frame rate
room_speed = 60;
alarm[0] = (room_speed * timeRemaining);