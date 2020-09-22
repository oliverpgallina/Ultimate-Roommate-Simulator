//Basic Up/Down/Left/Right Movement
if(keyboard_check(ord("W"))) y -= moveSpeed;
else if(keyboard_check(ord("A"))) x -= moveSpeed;
else if(keyboard_check(ord("S"))) y += moveSpeed;
else if(keyboard_check(ord("D"))) x += moveSpeed;
