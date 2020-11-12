/* Calculates the rent payments at the end of each week / month,
and resets it back to 1800 if players have been fined (thus increasing the rent temporarily) */
function rentCalc_scr(){
	ParentPlayer_o.totalMoney = ParentPlayer_o.totalMoney - ParentPlayer_o.rentDue;
	
	//NOT ENOUGH MONEY FAIL STATE
	if (ParentPlayer_o.totalMoney < 0) {
		audio_stop_sound(BGM_snd);
		room_goto(RentGameOver);
	}
	
	if (ParentPlayer_o.rentDue > ParentPlayer_o.baseRent) ParentPlayer_o.rentDue = ParentPlayer_o.baseRent;
}