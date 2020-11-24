
//checks for interaction between a player and a task
function PlayerInteract(player, task, condition ){

/* ok there's a buggy thingy going on here where the player has to run up against an object's collision once 
before canInteract gets set to true, meaning collision will look weird cuz the bar will show up but the player
might be out of range to actually perform the task UNLESS they collide with the actual object hit box first
so either this is fixed thru a hit box change or thru making the collision circle thing work */

	if ( place_meeting(x,y, task) /*collision_circle(task.x,task.y, 65, player, true, true)*/ ){
		
		if(condition){
			show_debug_message("Player is Interacting");
			player.canInteract = true;
			//Stop stepping sound from occurring while interacting
		//	alarm[6] = 1;
		}
		else{
			show_debug_message("Player can't interact");
			player.canInteract = false;
			CreateMessage(player, task);
			player.displayMessage = true;
		}

	}

}