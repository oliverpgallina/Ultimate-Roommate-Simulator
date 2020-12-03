// draws the UI clock stuff

////// draws the start game text thingy
if (showMessage)
{
	draw_sprite_stretched(TextBg, irandom_range(0, 3), 250, 200, 800, 320);
	draw_text_transformed_color(300, 200, "Survive for \n one month", 7, 7, image_angle, c_red, c_red, c_red, c_red, 1);
}

//somehow my math worked
timeOffset = 59 / timeRemaining;
minutes = (timeRemaining  - (alarm[0] / room_speed)) * timeOffset;

if(round(minutes) < 10) drawMinutes = "0" + string(round(minutes));
else drawMinutes = string(round(minutes));

if(currentTime < 10) drawHours = "0" + string(currentTime);
else drawHours = string(currentTime);

//clock
//calendar days and months
draw_set_color(c_white);
draw_text_transformed(x, y, drawHours + ":" + drawMinutes, 3, 3, image_angle);