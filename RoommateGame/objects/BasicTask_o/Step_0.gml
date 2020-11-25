

/*This code was redone a bit to fix a bug where if both players collided with a task and one of them
Interacted with it, sometimes the other player's stats would be affected */
if( place_meeting(x,y, Player1_o) && keyboard_check(Player1_o.actionKey)
&& Player1_o.canInteract && !Player1_o.regenerating && taskCanInteract && player != Player2_o) {
	player = Player1_o;
	isInteracting = true;
	//if (!audio_is_playing(SlideBar_snd)) alarm[2] = 1;
	//alarm[2] = 75;
}
else if ( place_meeting(x,y, Player2_o) && keyboard_check(Player2_o.actionKey)
&& Player2_o.canInteract && !Player2_o.regenerating && taskCanInteract && player != Player1_o) {
	player = Player2_o;
	isInteracting = true;
//	if (!audio_is_playing(SlideBar_snd)) alarm[2] = 1;
	//	alarm[2] = 75;
}
else{
	currValue = 0;
	player = ParentPlayer_o;
	isInteracting = false;
}


if( place_meeting(x,y, ParentPlayer_o)){
	showBar = true;
}
else{
	showBar = false;	
}
