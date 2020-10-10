/// @description Insert description here
// You can write your code in this editor
event_inherited();

statName = "Hunger";
player = Player1_o;
maxValue = player.maxHungerLevel;
minValue = player.minHungerLevel - 1;
//the math here is kinda weird but works
currValue = (maxValue - player.hungerLevel) + 1;
sprite = YellowBarFill;