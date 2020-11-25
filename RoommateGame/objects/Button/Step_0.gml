

if(mouse_click(width, height) && mouse_check_button(mb_left)){
	
	if(OnClick != -1){
		script_execute(OnClick);
	}
	
	show_debug_message("button clicked");
	
}
