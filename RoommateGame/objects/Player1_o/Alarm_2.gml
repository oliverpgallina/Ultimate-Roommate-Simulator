show_debug_message("PARTY'S OVER");
isPartying = false;
checkMoveSpeed_scr();
RaveOverlay1_o.image_alpha = 0;
RaveOverlay2_o.image_alpha = 0;
RaveOverlay3_o.image_alpha = 0;
RaveOverlay1_o.alarm[0] = -1;
RaveOverlay2_o.alarm[0] = -1;
RaveOverlay3_o.alarm[0] = -1;

ParentPlayer_o.rentDue += 300;