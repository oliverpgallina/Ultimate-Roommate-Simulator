otherPlayerIsRelievingStress = !Player1_o.relievingStress;
otherPlayerIsInteracting = BasicTask_o.player != Player1_o;
up = vk_up;
down = vk_down;
left = vk_left;
right = vk_right;
thisPlayer = Player2_o;

if(keyboard_check(actionKey)) show_debug_message("player two pressed action key");

event_inherited();
