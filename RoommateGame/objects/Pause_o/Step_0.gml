/*Exits the game if ESC is pressed */
if (keyboard_check_pressed(vk_escape)) game_end();

/*Activate and deactivate appropriate layers when P, the pause button, is pressed */
if (keyboard_check_pressed(ord("P"))){
	
	switch (pause){
		
		case false: 
		instance_deactivate_layer("Objects"); 
		instance_deactivate_layer("UI"); 
		instance_deactivate_layer("UI_BG"); 
		instance_deactivate_layer("Scenery"); 

		layer_set_visible("PauseBackground", true);
		layer_set_visible("PauseOverlay", true);
		
		audio_pause_sound(BGM_snd); 
		audio_pause_sound(RAVE5Seconds_snd); 
		pause = true; 
		break;
		
		
		
		case true: 
		instance_activate_layer("Objects"); 
		instance_activate_layer("UI");
		instance_activate_layer("UI_BG"); 
		instance_activate_layer("Scenery"); 
		
		layer_set_visible("PauseBackground", false);
		layer_set_visible("PauseOverlay", false);
		
		audio_resume_sound(BGM_snd); 
		audio_resume_sound(RAVE5Seconds_snd); 
		pause = false; 
		break;
	}
}
