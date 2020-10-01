/* Add up actionPoints during player's regeneration. Once the max is reached, stop regenerating */
function regenerateAP_scr(){
	if (actionPoints >= 2000) {
		actionPoints = 2000;
		regenerating = false;	
		return;
	}
	actionPoints += 4;
}