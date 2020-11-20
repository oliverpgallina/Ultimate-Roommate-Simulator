
//this message is for debugging purposes
//show_message("Time is up");

alarm[0] = room_speed * timeRemaining;
currentTime++;

if(currentTime > 23){
	endOfDay = true;
	currentTime = 0;
	day++;
	weekDay++;
	
	//Player1_o.hungerLevel++;
	//Player2_o.hungerLevel++;
	
	if (trashLevel < 6) {
		trashLevel++;
		if (!Player1_o.isPartying) checkMoveSpeed_scr();
	}
	else {
		trashLevel = 6;
		if (!Player1_o.isPartying) checkMoveSpeed_scr();
	}

	/* Make sure trash level doesn't go negative lol */
	if (trashLevel < 0) {
		trashLevel = 0;
		if (!Player1_o.isPartying) checkMoveSpeed_scr();
	}
	
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
if(day > 30){
	//rentCalc_scr();
	monthsPassed++;
	currentMonthIndex++;
	currentMonth = months[currentMonthIndex];
	day = 1;
}

/* Very janky way of saying end the game once it hits the 15th of December */
if (day > 15 && currentMonth == "December"){
	rentCalc_scr();
	////If rent calc doesn't move the room to the eviction screen, then go to scoring screen
	//audio_stop_sound(BGM_snd);
	//room_goto(ScoringRoom);
	//currentMonth = months[0];
	//day = 1;
}