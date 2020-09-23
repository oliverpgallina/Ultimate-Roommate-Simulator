//First checks if the player is regenerating Action Points, and continue regenerating if they are
if (regenerating) regenerateAP_scr();

//If the player isn't regenerating AP, allow them to move and perform actions as normal
if (!regenerating)
{
	//Basic Up/Down/Left/Right Movement
	if(keyboard_check(ord("W"))) {
		y -= moveSpeed;
		actionPoints--;
	}
	else if(keyboard_check(ord("A"))) {
		x -= moveSpeed;
		actionPoints--;
	}
	else if(keyboard_check(ord("S"))) {
		y += moveSpeed;
		actionPoints--;
	}
	else if(keyboard_check(ord("D"))) {
		x += moveSpeed;
		actionPoints--;
	}
}

//After moving (like, say, right after reducing Action Points from 1 to 0) check if AP is 0;
//if so, start regenerating
if (actionPoints == 0) regenerating = true;