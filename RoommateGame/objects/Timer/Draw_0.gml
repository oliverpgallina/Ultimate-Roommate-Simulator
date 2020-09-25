
draw_set_color(c_red);
draw_text(100, 100, "Timer: " + string(alarm[0]));
draw_text(100, 120, "seconds: " + string(alarm[0]/room_speed));
draw_text(100, 140, "seconds: " + string(timeRemaining + (-1 * (alarm[0]/room_speed))));
draw_text(100, 160, "Day: " + string(day));

minutes = timeRemaining + (-1 * (alarm[0]/room_speed));
draw_text(100, 180, "Current Time: " + string(currentTime) + ":" + string(minutes));