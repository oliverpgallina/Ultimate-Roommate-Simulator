
//displays a message telling the player what stats are too low
//to perform said task at this moment
function DisplayPlayerMessage(displayMessage, x, y){

draw_sprite(PlayerMessage, 0, x + 30, y - 140);
draw_text(x + 50, y - 150, displayMessage);

}