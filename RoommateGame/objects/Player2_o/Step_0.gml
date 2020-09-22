//Basic Up/Down/Left/Right Movement
if(keyboard_check(vk_up)) {
	y -= moveSpeed;
	isActing = true;
}
else if(keyboard_check(vk_left)) {
	x -= moveSpeed;
	isActing = true;
}
else if(keyboard_check(vk_down)) {
	y += moveSpeed;
	isActing = true;
}
else if(keyboard_check(vk_right)) {
	x += moveSpeed;
	isActing = true;
}
else isActing = false;

//While Moving, deplete Action Points over time (later this will also happen when player performs actions)
if (isActing){
	actionPoints--;
}