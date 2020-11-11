//these values need to be overrided
//otherPlayerIsRelievingStress = !Player2_o.relievingStress;
//otherPlayerIsInteracting = BasicTask_o.player != Player2_o;
//up = ord("W");
//down = ord("S");
//left = ord("A");
//right = ord("D");

//Pause and unpause the game (DOES NOT WORK CURRENTLY)
if (global.pause){
	instance_deactivate_all(true);
}

//First checks if the player is regenerating Action Points, and continue regenerating if they are
if (regenerating) regenerateAP_scr();
//Then checks if the player is reducing Stress Points, and continue reducing if they are
if (relievingStress) relieveStress_scr();

/*If stress hits the max and the player isn't performing an action
set their status to panicked, meaning they can't perform any more actions
until they relieve stress on the couch. And set SP to 1000 in case it went over the max */
if (stressPoints >= 1000) {
	panicked = true;
	stressPoints = 1000;
}
else if (stressPoints < 1000) panicked = false;

//Just in case SP ever goes negative
if (stressPoints <= 0) stressPoints = 0;

//If the player isn't regenerating AP or performing an Action, 
//allow them to move and perform actions as normal
if (!regenerating && !relievingStress)
{
	//Basic Up/Down/Left/Right Movement
	if(keyboard_check(up)) {
		y -= moveSpeed;
		//actionPoints--;
	}
	else if(keyboard_check(left)) {
		x -= moveSpeed;
		//actionPoints--;
	}
	else if(keyboard_check(down)) {
		y += moveSpeed;
		//actionPoints--;
	}
	else if(keyboard_check(right)) {
		x += moveSpeed;
		//actionPoints--;
	}
	
	//This should let the player interact with things (Studying, going to work, taking out trash, etc)

	//NOTE FOR FUTURE VINCENT 
	//REMOVE THIS IF STATEMENT 
	//SHOULD CHANGE SOMETHING 

	playerIsNotPanicking = !panicked;
	isTooHungry = hungerLevel < 3;
	hasActionPoints = actionPoints > 0;
	fullBelly = hungerLevel == 1
	isHungry = hungerLevel != 1;
	trashIsNotEmpty = Clock_o.trashLevel != 0;
	
	if(place_meeting(x,y, StudyTask_o)){
		show_debug_message("yo");
	}
	
	PlayerInteract(id, WorkTask_o, (playerIsNotPanicking && isTooHungry && otherPlayerIsInteracting && hasActionPoints) );
	PlayerInteract(id, StudyTask_o, (playerIsNotPanicking && isTooHungry && otherPlayerIsInteracting && hasActionPoints) );
	PlayerInteract(id, Trash_o, (playerIsNotPanicking && isTooHungry && trashIsNotEmpty && otherPlayerIsInteracting && hasActionPoints) );
	PlayerInteract(id, Couch_o, ( otherPlayerIsRelievingStress && fullBelly && otherPlayerIsInteracting && hasActionPoints) );
	PlayerInteract(id, Stove_o, (isHungry && otherPlayerIsInteracting && hasActionPoints) );
	PlayerInteract(id, Bed_o, isTooHungry && actionPoints < maxActionPoints);
	
	if(keyboard_check_pressed(partyKey) && (!Player1_o.isPartying && !Player2_o.isPartying)) partyTime_scr();
	
	if(!place_meeting(x, y, BasicTask_o)) displayMessage = false;
	
}

if (keyboard_check_pressed(ord("P"))) global.pause = true;