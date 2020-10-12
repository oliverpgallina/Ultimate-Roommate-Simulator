/* Activates PARTY TIME for both players */
function partyTime_scr(){
	show_debug_message("PARTY TIME");
	
	Player1_o.isPartying = true;
	Player2_o.isPartying = true;
	
	//ok movespeed increase doesnt work rn but anyway
	ParentPlayer_o.moveSpeed = 6;
	Player1_o.moveSpeed = 6;
	Player2_o.moveSpeed = 6;
	
	Player1_o.stressPoints = 0;
	Player2_o.stressPoints = 0;
	
	Player1_o.hungerLevel = 1;
	Player2_o.hungerLevel = 1;
	
	Clock_o.trashLevel = 0;
	
	ParentPlayer_o.totalMoney += 100;
	
	alarm[2] = 300;
}