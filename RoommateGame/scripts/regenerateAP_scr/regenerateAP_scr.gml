/* Add up actionPoints during player's regeneration. Once the max is reached, stop regenerating */
function regenerateAP_scr(){
	if (actionPoints == 100) {
		regenerating = false;	
		return;
	}
	actionPoints++;
}