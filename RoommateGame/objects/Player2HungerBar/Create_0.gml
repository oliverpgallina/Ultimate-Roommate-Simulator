
event_inherited();

statName = "Hunger";
player = Player2_o;
maxValue = player.maxHungerLevel;
minValue = player.minHungerLevel - 1;
//the math here is kinda weird but works
currValue = (maxValue - player.hungerLevel) + 1;
sprite = YellowBarFill;