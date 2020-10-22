// draws the UI clock stuff

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