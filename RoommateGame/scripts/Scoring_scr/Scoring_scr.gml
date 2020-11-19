//calculates a letter score based on the score points in each player

function Scoring(totalScore){

/* 95000 is the bare minimum score points acquired by paying rent (subject to change based on rent amount due), 
so that's why it's the lowest possible score point amount at F*/
	if (totalScore > 200000) return "S";
	else if (totalScore > 175000 ) return "A";
	else if (totalScore > 150000 ) return "B";
	else if (totalScore > 125000 ) return "C";
	else if (totalScore > 120000 ) return "D";
	else if (totalScore > 105000 ) return "E";
	else if (totalScore > 95000 ) return "F";
	
	return "F";
}


//here's a haiku

//roses are blue
//violets are red
//game maker is bad
//and Unity is better

/*
1000 Points to get S tier
800 Points for A tier
700 Points for B tier
500 Points for C tier
300 Points for D tier
0 - 200 for F tier
