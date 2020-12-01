var i = 0;

//logic for drawing menu option text, colors, etc
repeat (buttons)
{
	draw_set_font(TitleScreenFont);
	//draw_set_halign(fa_center);
	draw_set_color(c_gray);
	
	//chage color of currently selected option
	if (menu_index == i) draw_set_color (c_purple);
	
	draw_text(menu_x, menu_y + button_h * i, button[i]);
	i++;
}