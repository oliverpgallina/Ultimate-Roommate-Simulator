//First checks if the player is regenerating Action Points, and continue regenerating if they are
if (regenerating) regenerateAP_scr();

//If the player isn't regenerating AP or performing an Action, 
//allow them to move and perform actions as normal
if (!regenerating && !isActing)
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
	
	//This should let the player interact with things (Studying, going to work, taking out trash, etc)
	//presumably makes them im mobile while performing the action (for taking out trash maybe they just
	//disappear temporarily?
	if (keyboard_check_pressed(ord("E")) && place_meeting(x,y, Wall_o)){
		show_debug_message("player 1 INTERACT");
		payAP_scr(); 
	}
}

//If AP ever hits 0 or below AND the player isn't currently performing an Action, 
//set AP to 0 (just in case it was negative, so that it regenerates fully at the same speed each time)
//and start regenerating 
if (actionPoints <= 0 && !isActing) {
	actionPoints = 0;
	regenerating = true;
}