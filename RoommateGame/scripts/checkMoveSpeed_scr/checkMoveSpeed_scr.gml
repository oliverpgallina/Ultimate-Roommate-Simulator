//As the Trash Level increases towards higher values, make it harder to move for the player
function checkMoveSpeed_scr(){
	
//if (!Player1_o.isPartying && !Player2_o.isPartying){
	switch (Clock_o.trashLevel) {
		case 0:
			ParentPlayer_o.moveSpeed = 3;
			break;
		case 1:
			ParentPlayer_o.moveSpeed = 3;
			break;
		case 2:
			ParentPlayer_o.moveSpeed = 3;
			break;
		case 3:
			ParentPlayer_o.moveSpeed = 3;
			break;
		case 4:
			ParentPlayer_o.moveSpeed = 2;
			break;
		case 5:
			ParentPlayer_o.moveSpeed = 2;
			break;
		case 6:
			ParentPlayer_o.moveSpeed = 1;
			break;
	}
//}
}