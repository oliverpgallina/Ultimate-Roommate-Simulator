//catch the monitor size

global.MonitorH=display_get_height();
global.MonitorW=display_get_width();

//set your game's rooms  --> I just did put sensible arguments there but you have to set yours. Look at the link up there for each argument is what

 //room_set_view(Room01, 0,1, 0, 0, global.MonitorW, global.MonitorH, 0, 0, global.MonitorW, global.MonitorH, global.MonitorW/3, global.MonitorH/3, 0, 0, obj_Hero);

//set the application surface surface

surface_resize(application_surface,global.MonitorW,global.MonitorH);

window_set_fullscreen(true);

audio_play_sound(MainMenuBGM_snd, 1, true);
//if view_wport[0] != surface_get_width(application_surface) || view_hport[0] != surface_get_height(application_surface)
//   {
//   surface_resize(application_surface, view_wport[0],view_hport[0]);
//   }