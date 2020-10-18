//First checks if the player is regenerating Action Points, and continue regenerating if they are
if (regenerating) regenerateAP_scr();
//Then checks if the player is reducing Stress Points, and continue reducing if they are
if (relievingStress) relieveStress_scr();

//checkMoveSpeed_scr();

//If the player isn't regenerating AP, allow them to move and perform actions as normal
if (!regenerating && !isActing && !relievingStress)
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
	
if (actionPoints > 0)
{
	//This should let the player interact with things (Studying, going to work, taking out trash, etc)
	//presumably makes them im mobile while performing the action (for taking out trash maybe they just
	//disappear temporarily?
	if (place_meeting(x,y, WorkTask_o) && !panicked && hungerLevel < 3 && BasicTask_o.player != Player1_o){
		show_debug_message("WORK TIME");
		canInteract = true;
	}
	else if (place_meeting(x,y, StudyTask_o) && !panicked && hungerLevel < 3 && BasicTask_o.player != Player1_o){
		show_debug_message("STUDY TIME");
		canInteract = true;
	}
	else if (place_meeting(x,y, Trash_o) && !panicked && hungerLevel < 3 && BasicTask_o.player != Player1_o){
		if (Clock_o.trashLevel == 0) return;
		show_debug_message("TRASH TIME");
		canInteract = true;
	}
	else if (place_meeting(x,y, Couch_o) && !Player1_o.relievingStress && hungerLevel == 1 && BasicTask_o.player != Player1_o) {
		show_debug_message("RELAXING TIME");
		canInteract = true;
	}
	else if (place_meeting(x,y, Stove_o) && hungerLevel != 1 && BasicTask_o.player != Player1_o){
		show_debug_message("COOKING TIME");
		canInteract = true;
	}
	else if (keyboard_check_pressed(partyKey) && !isPartying) partyTime_scr();
	else {
		//show_debug_message("CANNOT INTERACT NOW PLAYER 2");
		canInteract = false;
	}
}
else 
{
	if (place_meeting(x,y, Bed_o) && hungerLevel < 3){
		show_debug_message("BED TIME");
		canInteract = true;
	}
}
}

/*If AP ever hits 0 or below AND the player isn't currently performing an Action, 
set AP to 0 (just in case it was negative, so that it regenerates fully at the same speed each time)
and start regenerating */ 
/*if (actionPoints <= 0 && !isActing) {
	actionPoints = 0;
	regenerating = true;
}
/*For special cases when the player happens to be both Panicked and Starving.
(Something interesting should happen but for now it'll just stop the player and reset their Hunger Level
and Action Points and Stress Points and have them regenerate */
else if (panicked && hungerLevel == 3){
	actionPoints = 0;
	stressPoints = 0;
	hungerLevel = 1;
	regenerating = true;
	panicked = false;
}

/*If stress hits the max and the player isn't performing an action
set their status to panicked, meaning they can't perform any more actions
until they relieve stress on the couch. And set SP to 1000 in case it went over the max */
if (stressPoints >= 1000 && !isActing) {
	panicked = true;
	stressPoints = 1000;
}
else if (stressPoints < 1000) panicked = false;

//Just in case SP ever goes negative
if (stressPoints <= 0) stressPoints = 0;