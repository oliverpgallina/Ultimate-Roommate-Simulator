menu_x = x;
menu_y = y;
button_h = 32;

if (!audio_is_playing(MainMenuBGM_snd)) audio_play_sound(MainMenuBGM_snd, 1, true);

//button array
button[0] = "SILENT";
button[1] = "LESS SILENT";
button[2] = "SQUEAK";
button[3] = "SOME SOUND";
button[4] = "BIT LOUDER";
button[5] = "REASONABLE";
button[6] = "GETTING THERE";
button[7] = "YEP YEP";
button[8] = "LOUD";
button[9] = "WOW LOUD";
button[10] = "MAXIMUM";

buttons = array_length_1d(button);

//current position in the menu
menu_index = 5;

//the last selected option in the menu
last_selected = 0;
