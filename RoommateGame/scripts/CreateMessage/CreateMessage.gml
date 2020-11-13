
//creates a message for the player when they can't interact with a task
function CreateMessage(player, task){

	newMessage = [""];

	//checks the task to see its requirements
	//and adds then to a list if the playert doesn't meet them
	for (var i = 0; i < array_length(task.requirements); ++i) {
		req = task.requirements[i];
	
		switch (req) {
			
	    case "panic":
	        
			if(player.panicked) newMessage[i] = "I'm Panicked.";
	        break;  
			
		case "hunger1":
		
			if(player.hungerLevel == 1) newMessage[i] = "I'm full.";
			break;
			
		case "hunger2":
		
			if(player.hungerLevel != 1) newMessage[i] = "I'm hungry.";
			break;
			
		case "hunger3":
		
			if(player.hungerLevel == 3) newMessage[i] = "I'm starving.";
			break;
		
		case "trash1":
		
			if(Clock_o.trashLevel == 0) newMessage[i] = "The apartment's clean.";
			break;
			
		case "trash3":
		
			if(Clock_o.trashLevel == 6) newMessage[i] = "The apartment's filthy.";
			break;

		case "exhausted":
		
			if(player.actionPoints == 0) newMessage[i] = "I'm exhausted.";
			break;
			
		case "tired":
			
			if(player.actionPoints == player.maxActionPoints) newMessage[i] = "I'm not tired yet.";
			break;
			
		case "0_Stress":
		
			if(player.stressPoints == player.minStressPoints) newMessage[i] = "I don't feel stressed yet.";
			
		}
	}
	
	//creates the meesage
	messageToDisplay = "";
	for (var i = 0; i < array_length(newMessage); ++i) {
		if(newMessage[i] != 0 && newMessage[i] != "" && newMessage[i] != "\n")
			messageToDisplay += string(newMessage[i]) + "\n";
			
		if(i ==  array_length(newMessage))
			messageToDisplay += string(newMessage[i]);
	}
	
	player.playerMessage = messageToDisplay;


}

//note:
//list of valid requirements
//	hunger 1-3
//	panic
//	exausted
//	trash 1-3
//	tired
