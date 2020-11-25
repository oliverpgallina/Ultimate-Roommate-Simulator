/// @description Insert description here
// You can write your code in this editor
//move 
switch (moveIndex) {
    case 0:
        x += shakeDist;
		moveIndex++;
        break;
		
    case 1:
		y += shakeDist;
		moveIndex++;
		break;
		
	case 2:
		x -= shakeDist;
		moveIndex++;
		break;
		
	case 3:
		y -= shakeDist;
		moveIndex = 0;
		break;	
}

alarm[3] = shakeSpeed;