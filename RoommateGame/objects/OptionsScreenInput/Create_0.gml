menu_x = x;
menu_y = y;
button_h = 32;

if (!audio_is_playing(MainMenuBGM_snd)) audio_play_sound(MainMenuBGM_snd, 1, true);

//button array
button[0] = "SILENT";
button[1] = "PIPSQUEAKIN'";
button[2] = "QUITE LOW";
button[3] = "LOWER";
button[4] = "SOME SOUND";
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
last_selected = 5;

global.vol = .5;