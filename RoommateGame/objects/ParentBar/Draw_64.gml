/// @description Insert description here
// You can write your code in this editor


//clamps the values
if (currValue < minValue ) currValue = minValue;
if (currValue > maxValue ) currValue = maxValue;

//draws stuff
draw_text(x, y - 30, statName);
draw_sprite(bgSprite, 0, x - 5, y - 5);
draw_sprite_stretched(smallBgSprite, 0, x, y, barWidth,  barHeight);
draw_sprite_stretched(sprite, 0, x, y, (currValue / maxValue) * barWidth,  barHeight);

if (Player1_o.panicked){
	draw_set_color(c_orange);
	draw_text(37, 352, "PANICKED!");
	
	draw_set_color(c_white);
}

if (Player2_o.panicked){
	draw_set_color(c_orange);
	draw_text(1252, 352, "PANICKED!");
	
	draw_set_color(c_white);
}

if (Player1_o.regenerating){
	draw_set_color(c_green);
	draw_text(37, 255, "RECOVERING");
	draw_set_color(c_white);
}
if (Player2_o.regenerating){
	draw_set_color(c_green);
	draw_text(1250, 255, "RECOVERING");
	draw_set_color(c_white);
}

if (Player1_o.actionPoints <= 0){
	draw_set_color(c_orange);
	draw_text(37, 257, "EXHAUSTED");
	draw_set_color(c_white);
}
if (Player2_o.actionPoints <= 0){
	draw_set_color(c_orange);
	draw_text(1253, 257, "EXHAUSTED");
	draw_set_color(c_white);
}
draw_set_color(c_purple);
draw_text(37, 447, string(Player1_o.hungerLvlString));
draw_text(1253, 447, string(Player2_o.hungerLvlString));
draw_set_color(c_white);