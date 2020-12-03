/// @description Insert description here
// You can write your code in this editor
if(displayMessage && playerMessage != ""){
	DisplayPlayerMessage(playerMessage, x, y);
}

//displays party message 
if ( ((panicked && hungerLevel == 3) || (actionPoints == 0 && hungerLevel == 3) || (actionPoints == 0 && panicked)) && partyMsgShow )
{
	DisplayPartyMessage();
	if(!timerHasStarted)
	{
		alarm[7] = room_speed * 5;
		timerHasStarted = true;
	}
}