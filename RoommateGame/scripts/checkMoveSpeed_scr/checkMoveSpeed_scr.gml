//As the Trash Level increases towards higher values, make it harder to move for the player
function checkMoveSpeed_scr(){
	
if (!Player1_o.isPartying && !Player2_o.isPartying){
	switch (Clock_o.trashLevel) {
		case 0:
			moveSpeed = 3;
			break;
		case 1:
			moveSpeed = 3;
			break;
		case 2:
			moveSpeed = 3;
			break;
		case 3:
			moveSpeed = 3;
			break;
		case 4:
			moveSpeed = 2;
			break;
		case 5:
			moveSpeed = 2;
			break;
		case 6:
			moveSpeed = 1;
			break;
	}
}
}