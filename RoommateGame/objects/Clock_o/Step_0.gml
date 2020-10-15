/* Calculate rent payments at the end of each week / month */
if (day == 7) {
	weekPassed = true;
	weeksPassedThisMonth++;
}

/* When a week passes, calculate grades */
if (weekPassed) {
	testCalc_scr();
	weekPassed = false;
	day = 1;
}

/* When a month passes, pay rent */
if (weeksPassedThisMonth == 4){
	monthsPassed++;
	weeksPassedThisMonth = 0;
	rentCalc_scr();
}

/* Make sure trash level doesn't go negative lol */
if (trashLevel < 0) trashLevel = 0;