/* End the party overlay and music and increase rent */
show_debug_message("PARTY'S OVER");
isPartying = false;
audio_resume_sound(BGM_snd);
checkMoveSpeed_scr();
RaveOverlay1_o.image_alpha = 0;
RaveOverlay2_o.image_alpha = 0;
RaveOverlay3_o.image_alpha = 0;
RaveOverlay1_o.alarm[0] = -1;
RaveOverlay2_o.alarm[0] = -1;
RaveOverlay3_o.alarm[0] = -1;

partied = true;
alarm[4] = 120;

ParentPlayer_o.rentDue += noiseComplaintFee;