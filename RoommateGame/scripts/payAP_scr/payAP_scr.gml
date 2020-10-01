/* Drains the player's AP when they perform an Action that costs Action Points (chores etc)
Preferrably this would be set up to work for every interactable object, 
instead of having to make a script for each one or something */
function payAP_scr(taskObject){
	// Going to work costs AP and increases SP
	if (taskObject == "WorkTask") {
		show_debug_message("gettin this MONEY");
		
		ParentPlayer_o.totalMoney += 70;
		
		actionPoints -= 800;
		stressPoints += 500;
		isActing = true;
		alarm[0] = 360; 
	}
	//This is a Basic Task, not fully implemented yet
	else if (taskObject == "BasicTask"){
		show_debug_message("doing basic stuff");
		
		actionPoints -= 400;
		isActing = true;
		alarm[0] = 180; //a 180 frame alarm, i.e. 3 seconds
	}
	//Studying costs AP and increases SP, also boosts Study Points (contributes to a better grade)
	else if (taskObject == "StudyTask"){
		show_debug_message("HITTIN THE BOOKS");
		
		studyPoints++;
		show_debug_message("StudyPoints: " + string(studyPoints));
		
		actionPoints -= 600;
		stressPoints += 200;
		isActing = true;
		alarm[0] = 240;
	}
	//Taking out the trash costs AP, reduces SP, (varies depending on the Trash Level) and puts the Trash Level to 0
	else if (taskObject == "TrashTask"){
		show_debug_message("TAKIN OUT TRASH");

		switch (Clock_o.trashLevel){
			case 1: 
				actionPoints -= 100;
				stressPoints -= 100;
				isActing = true;
				alarm[0] = 120;
				break;
			case 2:
				actionPoints -= 200;
				stressPoints -= 200;
				isActing = true;
				alarm[0] = 240;
				break;
			case 3: 
				actionPoints -= 300;
				stressPoints -= 300;
				isActing = true;
				alarm[0] = 360;
				break;
			case 4:
				actionPoints -= 400;
				stressPoints -= 400;
				isActing = true;
				alarm[0] = 480;
				break;
			case 5:
				actionPoints -= 500;
				stressPoints -= 500;
				isActing = true;
				alarm[0] = 600;
				break;
			case 6:
				actionPoints -= 600;
				stressPoints -= 600;
				isActing = true;
				alarm[0] = 720;
				break;
		}
				
		Clock_o.trashLevel = 0;	
	}
	//Relaxing slowly decreases SP over time and gets rid of the Panicked status (sets it to false)
	else if (taskObject == "RelaxTask"){
		show_debug_message("RELAXATION TIME");
		isActing = true;
		relievingStress = true;
	}
	//Cooking costs AP and reduces SP, increases the Trash Level by one, and sets Hunger Level back to 1
	else if (taskObject == "CookTask"){
		show_debug_message("COOKING");
		isActing = true;
		actionPoints -= 300;
		stressPoints -= 300;
		Clock_o.trashLevel++;
		hungerLevel = 1;
		alarm[0] = 300;
	}
}