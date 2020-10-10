/// @description Insert description here
// You can write your code in this editor


//clamps the values
if (currValue < minValue ) currValue = minValue;
if (currValue > maxValue ) currValue = maxValue;

//draws stuff
draw_text(x, y - 30, statName);
draw_sprite(bgSprite, 0, x - 5, y - 5);
draw_sprite_stretched(sprite, 0, x, y, (currValue / maxValue) * barWidth,  barHeight);