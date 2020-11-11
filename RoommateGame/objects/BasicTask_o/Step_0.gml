

/*This code was redone a bit to fix a bug where if both players collided with a task and one of them
Interacted with it, sometimes the other player's stats would be affected */
if(/*collision_circle(x,y, 65, Player1_o, true, true) && */ place_meeting(x,y, Player1_o) && keyboard_check(Player1_o.actionKey)
&& Player1_o.canInteract && !Player1_o.regenerating && taskCanInteract) {
	player = Player1_o;
	isInteracting = true;
}
else if (/*collision_circle(x,y, 65, Player2_o, true, true) */ place_meeting(x,y, Player2_o) && keyboard_check(Player2_o.actionKey)
&& Player2_o.canInteract && !Player2_o.regenerating && taskCanInteract) {
	player = Player2_o;
	isInteracting = true;
}
else{
	currValue = 0;
	player = ParentPlayer_o;
	isInteracting = false;
}


if(/*collision_circle(x, y, 65, ParentPlayer_o, true, true)*/ place_meeting(x,y, ParentPlayer_o)){
	showBar = true;
}
else{
	showBar = false;	
}

