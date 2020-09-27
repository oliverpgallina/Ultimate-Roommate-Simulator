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
}