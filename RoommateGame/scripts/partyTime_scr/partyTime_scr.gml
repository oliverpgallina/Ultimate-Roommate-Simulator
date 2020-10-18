/* Activates PARTY TIME for both players */
function partyTime_scr(){
	show_debug_message("PARTY TIME");

	partyEffects_scr();
	
	Player1_o.isPartying = true;
	Player2_o.isPartying = true;
	
	//ok movespeed increase doesnt work rn but anyway
	ParentPlayer_o.moveSpeed = 7;
	
	Player1_o.stressPoints = 0;
	Player2_o.stressPoints = 0;
	
	Player1_o.hungerLevel = 1;
	Player2_o.hungerLevel = 1;
	
	Clock_o.trashLevel = 0;
	
	Player1_o.alarm[2] = 300;
	Player2_o.alarm[2] = 300;
}