/*This code was redone a bit to fix a bug where if both players collided with a task and one of them
Interacted with it, sometimes the other player's stats would be affected */
if(place_meeting(x,y, Player1_o) && keyboard_check(Player1_o.actionKey) && Player1_o.canInteract) {
	player = Player1_o;
}
else if (place_meeting(x,y, Player2_o) && keyboard_check(Player2_o.actionKey) && Player2_o.canInteract) {
	player = Player2_o;
}
else{
currValue = 0;
player = ParentPlayer_o;
}

/*if( place_meeting(x,y, Player1_o) ){
	player = Player1_o;
}
else if( place_meeting(x,y, Player2_o) ){
	player = Player2_o;
}*/
show_debug_message(player);
currTime = room_speed * timeToComplete;

room_speed = 60;
alarm[0] = currTime;
//}

if(collision_circle(x, y, 70, ParentPlayer_o, true, true)){
	showBar = true;
}
else{
	showBar = false;	
}
