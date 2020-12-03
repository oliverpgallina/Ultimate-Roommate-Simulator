/* Activates PARTY TIME for both players */
function partyTime_scr(){
	show_debug_message("PARTY TIME");
	ParentPlayer_o.partyMsgShow = false;
	Player1_o.partyMsgShow = false;
	Player2_o.partyMsgShow = false;

	partyEffects_scr();
	
	Player1_o.isPartying = true;
	Player2_o.isPartying = true;
	
	Player1_o.actionPoints = maxActionPoints;
	Player2_o.actionPoints = maxActionPoints;
	
	Player1_o.stressPoints = minStressPoints;
	Player2_o.stressPoints = minStressPoints;
	
	Player1_o.hungerLevel = minHungerLevel;
	Player2_o.hungerLevel = minHungerLevel;
	
	Clock_o.trashLevel++;
	
	ParentPlayer_o.moveSpeed = 7;
	
	Player1_o.alarm[2] = 300;
	Player2_o.alarm[2] = 300;
	
	//Reset players' hunger timers
	Player1_o.alarm[3] = 1800;
	Player2_o.alarm[3] = 1800;
}