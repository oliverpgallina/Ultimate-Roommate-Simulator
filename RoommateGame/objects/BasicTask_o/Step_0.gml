/// @description Insert description here
// You can write your code in this editor

//if is colliding 
if((place_meeting(x,y, Player1_o) && keyboard_check(Player1_o.actionKey))|| place_meeting(x,y, Player2_o) && keyboard_check(Player2_o.actionKey)){
currTime = room_speed * timeToComplete;

room_speed = 60;
alarm[0] = currTime;
}
else{
currValue = 0;	
}

