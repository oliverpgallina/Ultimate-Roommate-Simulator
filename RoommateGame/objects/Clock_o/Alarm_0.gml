
//this message is for debugging purposes
//show_message("Time is up");

alarm[0] = room_speed * timeRemaining;
currentTime++;
Player1_o.hungerLevel++;
Player2_o.hungerLevel++;

if (trashLevel < 6) trashLevel++;
else trashLevel = 6;

if(currentTime > 23){
	endOfDay = true;
	currentTime = 0;
	day++;
	weekDay++;
	//room_goto(ScoringRoom);
	//show_message("end of the day");
}

//this section of code was previously in the step script
//but was moved here for better performance
/* Calculate rent payments at the end of each week / month */
if (weekDay > 7) {
	weekPassed = true;
}

/* When a week passes, calculate grades */
if (weekPassed) {
	testCalc_scr();
	weekPassed = false;
	weekDay = 1;
	
	//show_message("Week Passed");
	//day = 1;
}

/* When a month passes, pay rent */
//if (weeksPassedThisMonth == 4){
if(day > 31){
	monthsPassed++;
	currentMonthIndex++;
	currentMonth = months[currentMonthIndex];
	day = 1;

	//room_goto(ScoringRoom);
	
	//rentCalc_scr();
}