//Let player restart at this screen (or quit)
if (keyboard_check_pressed(ord("T"))) {
	audio_stop_sound(sadEvictBGM_snd);
	room_goto(StartScreen);
}

if (keyboard_check_pressed(vk_escape)) game_end();