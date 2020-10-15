// draws the UI clock stuff

//somehow my math worked
timeOffset = 59 / timeRemaining;
minutes = (timeRemaining  - (alarm[0] / room_speed)) * timeOffset;

if(round(minutes) < 10) drawMinutes = "0" + string(round(minutes));
else drawMinutes = string(round(minutes));

draw_text_transformed(x + 250, y, "Day: " + string(day), 5, 5, image_angle);
draw_text_transformed(x + 550, y, "Month: " + currentMonth, 5, 5, image_angle);
draw_text_transformed(x, y, string(currentTime) + ":" + drawMinutes, 5, 5, image_angle);