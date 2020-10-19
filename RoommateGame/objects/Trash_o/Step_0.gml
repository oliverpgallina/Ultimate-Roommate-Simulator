event_inherited();

switch (Clock_o.trashLevel){
			case 1: 
				taskTTC = 10;
				taskAction = -100;
				taskStress = -100;
				break;
			case 2:
				taskTTC = 9;
				taskAction = -200;
				taskStress = -200;
				break;
			case 3:
				taskTTC = 8;
				taskAction = -300;
				taskStress = -300;
				break;
			case 4:
				taskTTC = 7;
				taskAction = -400;
				taskStress = -400;
				break;
			case 5:
				taskTTC = 6;
				taskAction = -500;
				taskStress = -500;
				break;
			case 6:
				taskTTC = 5;
				taskAction = -600;
				taskStress = -600;
				break;
}