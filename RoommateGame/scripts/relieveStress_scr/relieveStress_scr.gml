/* Decrease the player's Stress Points to 0 */
function relieveStress_scr(){
	show_debug_message("relieving stress");
	while (stressPoints > 0){
		stressPoints -= 2;
		alarm[1] = 10;
	}
	stressPoints = 0;
	return;
}