/// @description Insert description here
// You can write your code in this editor

//if is colliding 
if(place_meeting(x,y, Player1_o) || place_meeting(x,y, Player2_o)){
currTime = room_speed * timeToComplete;

room_speed = 60;
alarm[0] = currTime;
}
else{
currValue = 0;	
}
	
	if(place_meeting(x, y, Player1_o) && keyboard_check(vk_alt)){
		//something happens
		Player1_o.foo();
	}