/// @description Insert description here
// You can write your code in this editor
PartSystem = part_system_create();
Particle = part_type_create();
part_type_shape(Particle, pt_shape_circle);
part_type_life(Particle, 3, 6);
part_type_size(Particle, 0.1, 0.3, 0, 0);
//part_type_orientation(Particle, 0, 359, 20, 0, 0);
//part_type_color1(Particle, c_yellow);
part_type_blend(Particle, 1);
part_type_direction(Particle, 0, 359, 20, 0);
part_type_alpha1(Particle, 0.1);

for(i = 0; i < 5; i++)
{
	
	part_particles_create(PartSystem, random_range(x - 100, x + 100), random_range(y - 100, y + 100), Particle, 20);
}