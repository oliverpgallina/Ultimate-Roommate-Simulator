
draw_set_color(c_red);
draw_text(50, 100, "Timer: " + string(alarm[0]));
draw_text(50, 120, "timer count: " + string(alarm[0]/room_speed));
draw_text(50, 140, "seconds: " + string(timeRemaining + (-1 * (alarm[0]/room_speed))));
draw_text(50, 160, "Day: " + string(day));

minutes = timeRemaining + (-1 * (alarm[0]/room_speed));
draw_text(50, 180, "Current Time: " + string(currentTime) + ":" + string(minutes));