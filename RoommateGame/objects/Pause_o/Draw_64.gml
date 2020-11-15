/*Draws the necessary text onscreen when game is paused */
if (pause)
{
	draw_set_font(Font1);
	draw_text_transformed(x, y, "PAUSED", 3, 3, image_angle);
	
	draw_text_transformed(x, y+200, "[P] Unpause", 3, 3, image_angle);
	
	draw_text_transformed(x, y+400, "[ESC] Exit Game", 3, 3, image_angle);
}