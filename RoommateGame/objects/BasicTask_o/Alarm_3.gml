/// @description Insert description here
// You can write your code in this editor
//move 
switch (moveIndex) {
    case 0:
        x += 1;
		moveIndex++;
        break;
		
    case 1:
		y += 1;
		moveIndex++;
		break;
		
	case 2:
		x -= 1;
		moveIndex++;
		break;
		
	case 3:
		y -= 1;
		moveIndex = 0;
		break;	
}

alarm[3] = 0.25 * room_speed;