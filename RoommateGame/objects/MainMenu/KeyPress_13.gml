//go to different rooms depending on which menu option the player hit Enter on
switch (menu_index){
	case 0: 
		room_goto(Room1);
		audio_stop_sound(MainMenuBGM_snd);
		break;
	case 1: 
		//room_goto();
		break;
	case 2: 
		room_goto(ControlsScreen);
		break;
	case 3: 
		room_goto(CreditsRoomTitle);
		break;
	case 4: 
		game_end();
		break;
}