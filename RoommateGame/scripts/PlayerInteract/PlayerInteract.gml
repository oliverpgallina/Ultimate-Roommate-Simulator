
//checks for interaction between a player and a task
function PlayerInteract(player, task, condition ){

if ( place_meeting(x,y, task) ){
		
		if(condition){
		show_debug_message("Player is Interacting");
		player.canInteract = true;
		}
		else{
		player.canInteract = false;
		player.playerMessage = "I'm too tired";
		player.displayMessage = true;
		}

	}
	else player.displayMessage = false;

}