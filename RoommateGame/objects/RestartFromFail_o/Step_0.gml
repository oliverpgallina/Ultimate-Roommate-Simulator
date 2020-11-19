//Let player restart at this screen (or quit)
if (keyboard_check_pressed(ord("R"))) {
	audio_stop_sound(sadEvictBGM_snd);
	room_goto(Room1);
}

if (keyboard_check_pressed(vk_escape)) game_end();