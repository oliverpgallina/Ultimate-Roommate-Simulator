
menu_move = (keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up)); //&& (keyboard_check_pressed(ord("W")) - keyboard_check_pressed("S"));

menu_index += menu_move;


//if we hit up at the top of the menu wrap it back around to the bottom of the menu and vice versa
if (menu_index < 0) menu_index = 0;
if (menu_index > buttons - 1) menu_index =  buttons - 1;

if (menu_index != last_selected) audio_play_sound(Step_snd, 2, false);

last_selected = menu_index;

if (keyboard_check_pressed(vk_escape)) game_end();

/* Handle volume control */
if keyboard_check_pressed(vk_down) && menu_index != 0
   {
        if global.vol < 1 global.vol += 0.1;
        audio_master_gain(global.vol);
		show_debug_message("UP");
       // audio_play_sound(snd_pew,0,0);
   }
if keyboard_check_pressed(vk_up) && menu_index != buttons - 1
  {
        if global.vol > 0 global.vol -= 0.1;
        audio_master_gain(global.vol);
			show_debug_message("DOWN");
      //  audio_play_sound(snd_pew,0,0);
   }
   
   if (keyboard_check_pressed(vk_space)) room_goto(StartScreen);