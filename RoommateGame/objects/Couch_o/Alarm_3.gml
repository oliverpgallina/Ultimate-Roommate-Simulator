/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

if(Player1_o.stressPoints == ParentPlayer_o.maxStressPoints || Player2_o.stressPoints == ParentPlayer_o.maxStressPoints)
{	shakeSpeed = 0.1 * room_speed;
	shakeDist = 3;
}
else
{
	shakeSpeed = 0.25 * room_speed;
	shakeDist = 1;
}

event_inherited();

