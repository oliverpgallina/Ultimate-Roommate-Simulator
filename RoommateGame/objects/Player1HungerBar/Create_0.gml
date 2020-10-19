
event_inherited();

statName = "Hunger";
player = Player1_o;
maxValue = player.maxHungerLevel - 1;
minValue = player.minHungerLevel - 1;

//the math here is kinda weird but works
currValue = (maxValue - player.hungerLevel) + 1;
sprite = YellowBarFill;