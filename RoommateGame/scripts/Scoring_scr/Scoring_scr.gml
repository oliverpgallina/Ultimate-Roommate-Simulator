//calculates a letter score based on the score points in each player

function Scoring(totalScore){

	if(totalScore > 1000)
		return "S";
	else if (totalScore > 800)
		return "A";
	else if(totalScore > 700)
		return "B";
	else if (totalScore > 500)
		return "C";
	else if(totalScore > 300)
		return "D";
	else if (totalScore > 200)
		return "E";
	else if(totalScore > 100)
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
