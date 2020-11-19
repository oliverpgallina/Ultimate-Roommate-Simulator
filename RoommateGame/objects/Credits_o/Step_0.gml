//Let player restart at this screen (or quit)
if (keyboard_check_pressed(ord("R"))) {
	room_goto(Room1);
}

if (keyboard_check_pressed(vk_escape)) game_end();