/// @description Insert description here
// You can write your code in this editor
event_inherited();

image_speed = 0;
actionKey = vk_control;

global.PlayerTwoScore = 0;
global.p2timesSlept = 0;
global.p2timesRelaxed = 0;
global.p2timesCooked = 0;
global.p2timesTrashtaken = 0;
global.p2timesStudied = 0;
global.p2timesWorked = 0;

//start player's hunger timer
alarm[3] = 1800;

AnimLeft = Player2_walk_left_sp;
AnimRight = Player2_walk_right_sp;
AnimIdle = Player2_sp;