//Let player restart at this screen (or quit)
if (keyboard_check_pressed(ord("R"))) {
	room_goto(Room1);
}

if (keyboard_check_pressed(vk_escape)) game_end();

if (keyboard_check_pressed(vk_space)) room_goto(StartScreen);

if (keyboard_check_pressed(vk_enter)) room_goto(CreditsRoomAssets);