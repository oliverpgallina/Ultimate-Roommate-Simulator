if (id.actionKey == ord("E")) audio_play_sound(Step_snd, 3, false);
if (id.actionKey == vk_control) audio_play_sound(Step2_snd, 4, false);

//Keep playing step sound as long as player moves
alarm[5] = 21;