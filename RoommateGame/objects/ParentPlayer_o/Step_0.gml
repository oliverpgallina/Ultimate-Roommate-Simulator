//As the Trash Level increases towards higher values, it becomes harder to move for the player
switch (Clock_o.trashLevel) {
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