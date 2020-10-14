/* Calculate rent payments at the end of each week / month */
if (day == 7) {
	weekPassed = true;
	weeksPassedThisMonth++;
}

if (weekPassed) {
	testCalc_scr();
	weekPassed = false;
	day = 1;
}

if (weeksPassedThisMonth == 4){
	weeksPassedThisMonth = 0;
	rentCalc_scr();
}


if (trashLevel < 0) trashLevel = 0;