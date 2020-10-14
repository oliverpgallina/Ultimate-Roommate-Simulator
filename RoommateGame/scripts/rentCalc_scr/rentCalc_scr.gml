/* Calculates the rent payments at the end of each week / month,
and resets it back to 1800 if players have been fined (thus increasing the rent temporarily) */
function rentCalc_scr(){
	ParentPlayer_o.totalMoney = ParentPlayer_o.totalMoney - ParentPlayer_o.rentDue;
	if (ParentPlayer_o.rentDue > 1800) ParentPlayer_o.rentDue = 1800;
}