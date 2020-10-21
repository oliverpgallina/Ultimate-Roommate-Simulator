/* Activates PARTY TIME for both players */
function partyTime_scr(){
	show_debug_message("PARTY TIME");

	partyEffects_scr();
	
	Player1_o.isPartying = true;
	Player2_o.isPartying = true;
	
	//ok movespeed increase doesnt work rn but anyway

	Player1_o.actionPoints = maxActionPoints;
	Player2_o.actionPoints = maxActionPoints;
	
	Player1_o.stressPoints = minStressPoints;
	Player2_o.stressPoints = minStressPoints;
	
	Player1_o.hungerLevel = minHungerLevel;
	Player2_o.hungerLevel = minHungerLevel;
	
	Clock_o.trashLevel = 0;
	
	ParentPlayer_o.moveSpeed = 7;
	
	Player1_o.alarm[2] = 300;
	Player2_o.alarm[2] = 300;
	
	Player1_o.alarm[3] = 1200;
	Player2_o.alarm[3] = 1200;
}