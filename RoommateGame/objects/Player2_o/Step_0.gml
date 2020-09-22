//Basic Up/Down/Left/Right Movement
if(keyboard_check(vk_up)) y -= moveSpeed;
else if(keyboard_check(vk_left)) x -= moveSpeed;
else if(keyboard_check(vk_down)) y += moveSpeed;
else if(keyboard_check(vk_right)) x += moveSpeed;