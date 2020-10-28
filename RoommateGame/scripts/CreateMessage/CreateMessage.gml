
//creates a message for the player when they can't interact with a task
function CreateMessage(player, task){

	newMessage = [""];

	//checks the task to see its requirements
	//and adds then to a list if the playert doesn't meet them
	for (var i = 0; i < array_length(task.requirements); ++i) {
		req = task.requirements[i];
	
		switch (req) {
			
	    case "panic":
	        
			if(player.panicked) newMessage[i] = "I'm Panicking";
	        break;  
			
		case "hunger3":
		
			if(player.hungerLevel == 0) newMessage[i] = "I'm too hungry";
			break;
			
		case "exhausted":
		
			if(player.actionPoints == 0) newMessage[i] = "I'm exhausted";
			break;
		
		case "trash":
		
			if(Clock_o.trashLevel == 3) newMessage[i] = "The House is too dirty";
			break;
		}
	}
	
	//creates the meesage
	messageToDisplay = "";
	for (var i = 0; i < array_length(newMessage); ++i) {
		if(newMessage[i] != 0)
			messageToDisplay += string(newMessage[i]) + "\n";
	}
	
	player.playerMessage = messageToDisplay;


}

//note:
//list of valid requirements
//	hunger 1-3
//	panic
//	exausted
//	trash
