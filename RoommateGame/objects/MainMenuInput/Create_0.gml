menu_x = x;
menu_y = y;
button_h = 32;

if (!audio_is_playing(MainMenuBGM_snd)) audio_play_sound(MainMenuBGM_snd, 1, true);

//button array
button[0] = "START GAME";
button[1] = "OPTIONS";
button[2] = "CONTROLS";
button[3] = "CREDITS!";
button[4] = "EXIT";

buttons = array_length_1d(button);

//current position in the menu
menu_index = 0;
//the last selected option in the menu
last_selected = 0;

global.vol = .5;
