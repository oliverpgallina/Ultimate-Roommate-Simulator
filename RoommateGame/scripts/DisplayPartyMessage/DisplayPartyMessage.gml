function DisplayPartyMessage(){

draw_set_color(c_purple);
draw_sprite_stretched(PartyTextBg, irandom_range(0, 3), 240, 230, 400, 100);
draw_text_transformed(250, 250, "PRESS SPACE TO PARTY!", 2, 2, image_angle);
}