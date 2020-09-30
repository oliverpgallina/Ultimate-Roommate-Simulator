//First checks if the player is regenerating Action Points, and continue regenerating if they are
if (regenerating) regenerateAP_scr();
//Then checks if the player is reducing Stress Points, and continue reducing if they are
if (relievingStress) relieveStress_scr();

checkMoveSpeed_scr();

//If the player isn't regenerating AP, allow them to move and perform actions as normal
if (!regenerating && !isActing)
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
		if (keyboard_check_pressed(vk_control) && place_meeting(x,y, BasicTask_o)){
		show_debug_message("player 2 INTERACT");
		payAP_scr("BasicTask");
	}
	else if (keyboard_check_pressed(vk_control) && place_meeting(x,y, WorkTask_o)){
		show_debug_message("player 2 INTERACT");
		payAP_scr("WorkTask");
	}
	else if (keyboard_check_pressed(vk_control) && place_meeting(x,y, StudyTask_o)){
		show_debug_message("player 2 INTERACT");
		payAP_scr("StudyTask");
	}
	else if (keyboard_check_pressed(vk_control) && place_meeting(x,y, Trash_o)){
		if (Clock_o.trashLevel == 0) return;
		show_debug_message("player 2 INTERACT");
		payAP_scr("TrashTask");
	}
	
	/*Ok this interact code is kinda bad but it works, I was trying to make WorkTask a child class of 
	BasicTask to make things easier but like I ended up messing around with how GML interprets
	objects and parents and children and stuff so I was just like screw it copy paste stuff.
	We can fix this later */
}

/*If AP ever hits 0 or below AND the player isn't currently performing an Action, 
set AP to 0 (just in case it was negative, so that it regenerates fully at the same speed each time)
and start regenerating */ 
if (actionPoints <= 0 && !isActing) {
	actionPoints = 0;
	regenerating = true;
}

/*If stress hits the max and the player isn't performing an action
set their status to panicked, meaning they can't perform any more actions
until they relieve stress on the couch. And set SP to 1000 in case it went over the max */
if (stressPoints >= 1000 && !isActing) {
	panicked = true;
	stressPoints = 1000;
}