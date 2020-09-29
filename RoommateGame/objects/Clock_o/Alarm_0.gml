
//this message is for debugging purposes
//show_message("Time is up");

alarm[0] = room_speed * timeRemaining;
day++;
currentTime++;

if (trashLevel < 6) trashLevel++;
else trashLevel = 6;

if(currentTime == 24){
	endOfDay = true;
	show_message("end of the day");
}