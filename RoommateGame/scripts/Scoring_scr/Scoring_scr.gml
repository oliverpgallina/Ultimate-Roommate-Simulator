//calculates a letter score based on the score points in each player

function Scoring(totalScore){

/* 95000 is the bare minimum score points acquired by paying rent (subject to change based on rent amount due), 
so that's why it's the lowest possible score point amount at F*/
	if (totalScore > 155000) return "S";
	else if (totalScore > 140000 ) return "A";
	else if (totalScore > 130000 ) return "B";
	else if (totalScore > 120000 ) return "C";
	else if (totalScore > 110000 ) return "D";
	else if (totalScore > 100000 ) return "E";
	else if (totalScore > 95000 ) return "F";
	
	return "F";
}