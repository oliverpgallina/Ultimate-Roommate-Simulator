/* Calculate rent payments at the end of each week / month */
if (day == 7) weekPassed = true;

if (weekPassed) {
	rentCalc_scr();
	testCalc_scr();
	weekPassed = false;
	day = 1;
}