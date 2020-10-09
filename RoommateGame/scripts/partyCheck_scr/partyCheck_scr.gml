/* Checks whether players can activate PARTY TIME at the end of a given week */
function partyCheck_scr(){
	if ((isGoodRoommate(Player1_o) && isGoodRoommate(Player2_o))){
		show_debug_message("PARTY TIME");
	}
}

/* Checks if player has performed well and thus is eligible for PARTY TIME */
function isGoodRoommate(player){
	//should eventually factor in how many times player went to work as well (probably gonna use Roommate Points's count of work points for that)
	if (player.grade == "A" && player.stressPoints <= 200 && Clock_o.trashLevel <= 2) return true;
}