/* Add up actionPoints during player's regeneration. Once the max is reached, stop regenerating */
function regenerateAP_scr(){
	if (actionPoints >= apLimit) {
		actionPoints = apLimit;
		regenerating = false;	
		return;
	}
	actionPoints += 3;
}