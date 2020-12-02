otherPlayerIsRelievingStress = !Player1_o.relievingStress;
//otherPlayerIsInteracting = BasicTask_o.player != Player1_o;
up = vk_up;
down = vk_down;
left = vk_left;
right = vk_right;
if (panicked && hungerLevel == 3 && actionPoints == 0) DisplayPartyMessage();
event_inherited();
