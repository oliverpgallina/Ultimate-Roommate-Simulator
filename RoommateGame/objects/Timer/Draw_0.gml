

draw_set_color(c_white);
draw_text(50, 50, "Timer: " + string(alarm[0]));
draw_text(50, 70, "seconds: " + string(alarm[0]/room_speed));
draw_text(50, 90, "seconds: " + string(timeRemaining + (-1 * (alarm[0]/room_speed))));
draw_text(50, 110, "Day: " + string(day));