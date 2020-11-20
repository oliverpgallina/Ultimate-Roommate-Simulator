

/*This code was redone a bit to fix a bug where if both players collided with a task and one of them
Interacted with it, sometimes the other player's stats would be affected */
if( place_meeting(x,y, Player1_o) && keyboard_check(Player1_o.actionKey)
&& Player1_o.canInteract && !Player1_o.regenerating && taskCanInteract && player != Player2_o) {
	player = Player1_o;
	isInteracting = true;
}
else if ( place_meeting(x,y, Player2_o) && keyboard_check(Player2_o.actionKey)
&& Player2_o.canInteract && !Player2_o.regenerating && taskCanInteract && player != Player1_o) {
	player = Player2_o;
	isInteracting = true;
}
else{
	currValue = 0;
	player = ParentPlayer_o;
	isInteracting = false;
}


if( place_meeting(x,y, ParentPlayer_o)){
	showBar = true;
}
else{
	showBar = false;	
}

///Particles///

/*PartSystem = part_system_create();
Particle = part_type_create();
part_type_shape(Particle, pt_shape_circle);
part_type_life(Particle, 0.3, 3);
part_type_size(Particle, 0.5, 1, 0, 0);
part_type_orientation(Particle, 0, 359, 20, 0, 0);
part_type_color1(Particle, c_yellow);
part_type_blend(Particle, 1);
part_type_direction(Particle, 0, 359, 20, 0);
part_type_alpha3(Particle, 0.1, 0.5, 1);
part_particles_create(PartSystem, x, y, Particle, 20);*/
