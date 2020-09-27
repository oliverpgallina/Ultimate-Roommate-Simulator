/* Calculates the rent payments at the end of each week / month */
function rentCalc_scr(){
	ParentPlayer_o.totalMoney = ParentPlayer_o.totalMoney - ParentPlayer_o.rentDue;
}