function payAP_scr(){
	actionPoints--;
	alarm[0] = room_speed;
	 /* this should drain AP over time and make the player immobile, 
	 since this is when they perform actions like studying etc.
	 Preferrably this would also work for like every interactable object, instead of having to make
	 a script for each one */
}