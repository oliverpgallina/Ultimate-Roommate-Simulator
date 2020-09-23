//First checks if the player is regenerating Action Points, and continue regenerating if they are
if (regenerating) regenerateAP_scr();

//If the player isn't regenerating AP, allow them to move and perform actions as normal
if (!regenerating)
{
	//Basic Up/Down/Left/Right Movement
	if(keyboard_check(vk_up)) {
		y -= moveSpeed;
		actionPoints--;
	}
	else if(keyboard_check(vk_left)) {
		x -= moveSpeed;
		actionPoints--;
	}
	else if(keyboard_check(vk_down)) {
		y += moveSpeed;
		actionPoints--;
	}
	else if(keyboard_check(vk_right)) {
		x += moveSpeed;
		actionPoints--;
	}
	
	//This should let the player interact with things (Studying, going to work, taking out trash, etc)
	//presumably makes them im mobile while performing the action (for taking out trash maybe they just
	//disappear temporarily?
	if (keyboard_check_pressed(vk_control) && place_free(x,y)){
		drainAP_scr();
	}
 }

//After moving (like, say, right after reducing Action Points from 1 to 0) check if AP is 0;
//if so, start regenerating
if (actionPoints == 0) regenerating = true;