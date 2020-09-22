//Basic Up/Down/Left/Right Movement
if(keyboard_check(ord("W"))) {
	y -= moveSpeed;
	isActing = true;
}
else if(keyboard_check(ord("A"))) {
	x -= moveSpeed;
	isActing = true;
}
else if(keyboard_check(ord("S"))) {
	y += moveSpeed;
	isActing = true;
}
else if(keyboard_check(ord("D"))) {
	x += moveSpeed;
	isActing = true;
}
else isActing = false;

//While Moving, deplete Action Points over time (later this will also happen when player performs actions)
if (isActing){
	actionPoints--;
}