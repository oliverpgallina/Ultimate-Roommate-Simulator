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
	if(keyboard_check(ord("W"))) {
		y -= moveSpeed;
		//actionPoints--;
	}
	else if(keyboard_check(ord("A"))) {
		x -= moveSpeed;
		//actionPoints--;
	}
	else if(keyboard_check(ord("S"))) {
		y += moveSpeed;
		//actionPoints--;
	}
	else if(keyboard_check(ord("D"))) {
		x += moveSpeed;
		//actionPoints--;
	}
	
	if (actionPoints > 0)
	{
		//This should let the player interact with things (Studying, going to work, taking out trash, etc)
		//presumably makes them im mobile while performing the action (for taking out trash maybe they just
		//disappear temporarily?
	
		//work
		PlayerInteract(Player1_o, WorkTask_o, (!panicked && hungerLevel < 3 && BasicTask_o.player != Player2_o) );
		PlayerInteract(Player1_o, StudyTask_o, (!panicked && hungerLevel < 3 && BasicTask_o.player != Player2_o) );
		PlayerInteract(Player1_o, Trash_o, (!panicked && hungerLevel < 3 && Clock_o.trashLevel != 0 && BasicTask_o.player != Player2_o) );
		PlayerInteract(Player1_o, Couch_o, ( !Player2_o.relievingStress && hungerLevel == 1 && BasicTask_o.player != Player2_o ) );
		PlayerInteract(Player1_o, Stove_o, (hungerLevel != 1 && BasicTask_o.player != Player2_o) );
		PlayerInteract(Player1_o, Bed_o, hungerLevel < 3);
	}
	else{ 
		
		if (place_meeting(x,y, Bed_o) && hungerLevel < 3){
			show_debug_message("BED TIME");
			canInteract = true;
		}
		else if(place_meeting(x, y, BasicTask_o)) {
			canInteract = false;
			CreateMessage(Player1_o, BasicTask_o);
			displayMessage = true;
		}
		else{
			canInteract = false;
			displayMessage = false;
			show_debug_message("player can't interact");
		}

	}

}