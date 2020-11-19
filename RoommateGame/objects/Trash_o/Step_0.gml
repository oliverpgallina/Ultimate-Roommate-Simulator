event_inherited();

/*Change the TTC, AP & SP required, and given Score Points based on the trash level*/
switch (Clock_o.trashLevel){
			case 1: 
				taskTTC = 5;
				taskAction = -100;
				taskStress = -100;
				taskScorePoints = 1000;
				break;
			case 2:
				taskTTC = 6;
				taskAction = -200;
				taskStress = -150;
				taskScorePoints = 2000;
				break;
			case 3:
				taskTTC = 7;
				taskAction = -300;
				taskStress = -200;
				taskScorePoints = 3000;
				break;
			case 4:
				taskTTC = 8;
				taskAction = -400;
				taskStress = -250;
				taskScorePoints = 4000;
				break;
			case 5:
				taskTTC = 9;
				taskAction = -500;
				taskStress = -300;
				taskScorePoints = 3000;
				break;
			case 6:
				taskTTC = 10;
				taskAction = -600;
				taskStress = -350;
				taskScorePoints = 2000;
				break;
}