/* Calculates players' test results at the end of each week */
function testCalc_scr(){
	show_debug_message("GRADING PLAYERS");
	
	//These are the Study Point values of both players
	p1SP = Player1_o.studyPoints;
	p2SP = Player2_o.studyPoints;
	
	if (p1SP > 0){
		show_debug_message("GRADING PLAYER 1");
		if (p1SP == 1) Player1_o.grade = "D";
		else if (p1SP >= 2 && p1SP <= 5) Player1_o.grade = "C";
		else if (p1SP >= 6 && p1SP <= 9) Player1_o.grade = "B";
		else if (p1SP >= 10) Player1_o.grade = "A";
	}
	else Player1_o.grade = "F";
	
	if (p2SP > 0){
		show_debug_message("GRADING PLAYER 2");
		if (p2SP == 1) Player2_o.grade = "D";
		else if (p2SP >= 2 && p2SP <= 5) Player2_o.grade = "C";
		else if (p2SP >= 6 && p2SP <= 9) Player2_o.grade = "B";
		else if (p2SP >= 10) Player2_o.grade = "A";
	}
	else Player2_o.grade = "F";
	
	Player1_o.studyPoints = 0;
	Player2_o.studyPoints = 0;
}