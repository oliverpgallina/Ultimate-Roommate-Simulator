/// @description Insert description here
// You can write your code in this editor

//if is colliding 
if( (place_meeting(x,y, Player1_o) && keyboard_check(Player1_o.actionKey)) || (place_meeting(x,y, Player2_o) && keyboard_check(Player2_o.actionKey)) ){

if( place_meeting(x,y, Player1_o) ){
	player = Player1_o;
}
else if( place_meeting(x,y, Player2_o) ){
	player = Player2_o;
}

currTime = room_speed * timeToComplete;

room_speed = 60;
alarm[0] = currTime;
}
else{
currValue = 0;
player = ParentPlayer_o;
}

if(collision_circle(x, y, 70, ParentPlayer_o, true, true)){
	showBar = true;
}
else{
	showBar = false;	
}
