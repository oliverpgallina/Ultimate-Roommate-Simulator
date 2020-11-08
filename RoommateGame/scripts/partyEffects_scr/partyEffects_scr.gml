//Flashes cool colors and plays music for PARTY TIME
function partyEffects_scr(){
	audio_pause_sound(BGM_snd);
	
	audio_play_sound(RAVE5Seconds_snd, 1, false);
	
	RaveOverlay1_o.image_alpha = .25;
	RaveOverlay1_o.alarm[0] = 25;
	
	
}