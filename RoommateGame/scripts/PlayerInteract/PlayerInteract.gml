
//checks for interaction between a player and a task
function PlayerInteract(player, task, condition ){

	if ( place_meeting(x,y, task) ){
		
		if(condition){
			show_debug_message("Player is Interacting");
			player.canInteract = true;
		}
		else{
			show_debug_message("Player can't interact");
			player.canInteract = false;
			CreateMessage(player, task);
			player.displayMessage = true;
		}

	}

}