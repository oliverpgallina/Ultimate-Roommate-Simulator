/// @description Insert description here
// You can write your code in this editor

//draws the bar every frame 

if(showBar){
draw_sprite(BarBackground, 0, barX, barY);

currValue += (alarm[0] / room_speed);
if(currValue > maxTotal){
	currValue = maxTotal;
	
	show_message("task completed!")
}

draw_sprite_stretched(BarFill, 0, barX, barY, (currValue/maxTotal) * barWidth, barHeight);
}
else{
draw_sprite(TestSprite_sp, 0, x, y);
}

//the clamp method legit doesn't work
// why game maker, why?