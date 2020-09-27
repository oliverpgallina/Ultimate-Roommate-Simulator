/* Calculates players' test results at the end of each week */
function testCalc_scr(){
	show_debug_message("GRADING PLAYERS");
	
	//These are the Study Point values of both players
	p1SP = Player1_o.studyPoints;
	p2SP = Player2_o.studyPoints;
	
	//Calculate Player 1's grade based on their Study Points
	switch (p1SP) {
		case (1):
			Player1_o.grade = "F";
			break;
		case (2):
			Player1_o.grade = "D";
			break;
		case (3):
			Player1_o.grade = "C";
			break;
		case (5):
			Player1_o.grade = "B";
			break;
		case (8):
			Player1_o.grade = "A";
			break;
	}
	
	//Calculate Player 2's grade based on their Study Points
	switch (p2SP) {
		case (1):
			Player2_o.grade = "F";
			break;
		case (2):
			Player2_o.grade = "D";
			break;
		case (3):
			Player2_o.grade = "C";
			break;
		case (5):
			Player2_o.grade = "B";
			break;
		case (8):
			Player2_o.grade = "A";
			break;
	}
	
	Player1_o.studyPoints = 0;
	Player2_o.studyPoints = 0;
}