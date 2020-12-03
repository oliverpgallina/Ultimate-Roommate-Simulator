draw_set_color(c_red);
if (ParentPlayer_o.partied){
	draw_sprite_stretched(TextBg2, irandom_range(0, 3), 300, 330, 830, 100)
	draw_text_transformed(350,350, "NOISE COMPLAINT: RENT +$140", 3, 3, image_angle);
	//draw_set_color(c_white);
}