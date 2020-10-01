/* Decrease the player's Stress Points to 0 */
function relieveStress_scr(){
	show_debug_message("relieving stress");
	
	if (stressPoints <= 0) {
		stressPoints = 0;
		alarm[1] = 1;
		return;
	}

	stressPoints -= 1;
}