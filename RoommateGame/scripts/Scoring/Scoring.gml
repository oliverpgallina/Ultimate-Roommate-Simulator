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


function Scoring(score){

	totalScore = 0;

	for(i = 0; i < score.length - 1; i++){
	totalScore += score[i];
	}
	
	
	//stub values
	if(totalScore > 10)
		return "S";
	else if (totalScore > 9)
		return "A";
	else if(totalScore > 8)
		return "B";
	else if (totalScore > 7)
		return "C";
	else if(totalScore > 6)
		return "D";
	else if (totalScore > 5)
		return "E";
	else if(totalScore > 4)
		return "F";
	
}


//here's a haiku

//roses are blue
//violets are red
//game maker is bad
//and Unity is better