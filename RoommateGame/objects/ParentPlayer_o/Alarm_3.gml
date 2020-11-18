/// @description Insert description here
// You can write your code in this editor
hungerLevel++;
hungerLevel = clamp(hungerLevel, 0, 3);

//Set hunger level to increase again in x amount of seconds
alarm[3] = 1800;