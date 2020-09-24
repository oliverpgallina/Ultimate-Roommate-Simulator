/* Drains the player's AP when they perform an Action that costs Action Points (chores etc)
Preferrably this would be set up to work for every interactable object, 
instead of having to make a script for each one or something */
function payAP_scr(){
	actionPoints -= 400;
	isActing = true;
	alarm[0] = 180; //a 180 frame alarm, i.e. 3 seconds
}