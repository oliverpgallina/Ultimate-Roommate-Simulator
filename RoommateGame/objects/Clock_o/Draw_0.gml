draw_set_color(c_purple);
draw_text(250, 10, "Current Trash Level: " + string(trashLevel));

//draw_set_color(c_black);
//draw_text(25, 10, "Timer: " + string(alarm[0]));
//draw_text(25, 30, "timer count: " + string(alarm[0]/room_speed));
//draw_text(25, 50, "seconds: " + string(timeRemaining + (-1 * (alarm[0]/room_speed))));

//draw_text(25, 70, "Day: " + string(day));

//minutes = timeRemaining - (alarm[0] / room_speed);
//draw_text(25, 90, "Current Time: " + string(currentTime) + ":" + string(minutes));
draw_text(25, 90, "weekday: " + string(weekDay));