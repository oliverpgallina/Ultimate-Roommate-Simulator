// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//takes in a bunch of parameters, such as money made, times the house was cleaned, 
//grades and etc and assigns a roommate grade to that roommate from F-S
//F, E, D, C, B, A, S

//params
//score is an array with all the important scoring info

//note: there is a haiku at the end

//TODO
//ALL THE VALUES ARE STUBS
//THEY ARE NOT GOOD FOR THE FINAL VERSION



function Scoring(player){
	
	totalScore = player.scorePoints;

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
