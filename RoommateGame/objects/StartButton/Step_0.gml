

if(mouse_click(width, height) && mouse_check_button(mb_left)){
	
	if(OnClick != -1){
		room_goto(Room1);
	}
	
	show_debug_message("button clicked");
	
}