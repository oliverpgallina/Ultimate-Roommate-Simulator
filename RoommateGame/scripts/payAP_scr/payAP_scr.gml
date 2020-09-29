/* Drains the player's AP when they perform an Action that costs Action Points (chores etc)
Preferrably this would be set up to work for every interactable object, 
instead of having to make a script for each one or something */
function payAP_scr(taskObject){
	if (taskObject == "WorkTask") {
		show_debug_message("gettin this MONEY");
		
		ParentPlayer_o.totalMoney += 70;
		
		actionPoints -= 800;
		isActing = true;
		alarm[0] = 360; 
	}
	else if (taskObject == "BasicTask"){
		show_debug_message("doing basic stuff");
		
		actionPoints -= 400;
		isActing = true;
		alarm[0] = 180; //a 180 frame alarm, i.e. 3 seconds
	}
	else if (taskObject == "StudyTask"){
		show_debug_message("HITTIN THE BOOKS");
		
		studyPoints++;
		show_debug_message("StudyPoints: " + string(studyPoints));
		
		actionPoints -= 600;
		isActing = true;
		alarm[0] = 240;
	}
	else if (taskObject == "TrashTask"){
		show_debug_message("TAKIN OUT TRASH");

		switch (Clock_o.trashLevel){
			case 1: 
				actionPoints -= 100;
				isActing = true;
				alarm[0] = 120;
				break;
			case 2:
				actionPoints -= 200;
				isActing = true;
				alarm[0] = 240;
				break;
			case 3: 
				actionPoints -= 300;
				isActing = true;
				alarm[0] = 360;
				break;
			case 4:
				actionPoints -= 400;
				isActing = true;
				alarm[0] = 480;
				break;
			case 5:
				actionPoints -= 500;
				isActing = true;
				alarm[0] = 600;
				break;
			case 6:
				actionPoints -= 600;
				isActing = true;
				alarm[0] = 720;
				break;
		}
				
		Clock_o.trashLevel = 0;
		
	}
}