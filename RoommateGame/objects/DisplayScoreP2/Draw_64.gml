draw_set_color(c_yellow);
draw_set_font(TitleScreenFont);
draw_text_transformed(x, y-20, "Player 2 Score: " + playerTwoScore, 1.3, 1.3, image_angle);
draw_set_color(c_green);
draw_text_transformed(x, y+50, "Times Studied: " + string(global.p2timesStudied), 1, 1, image_angle);
draw_text_transformed(x, y+100, "Times Worked: " + string(global.p2timesWorked), 1, 1, image_angle);
draw_text_transformed(x, y+150, "Times Slept: " + string(global.p2timesSlept), 1, 1, image_angle);
draw_text_transformed(x, y+200, "Times Relaxed: " + string(global.p2timesRelaxed), 1, 1, image_angle);
draw_text_transformed(x, y+250, "Times Cooked: " + string(global.p2timesCooked), 1, 1, image_angle);
draw_text_transformed(x, y+300, "Times Taken out Trash: " + string(global.p2timesTrashtaken), 1, 1, image_angle);