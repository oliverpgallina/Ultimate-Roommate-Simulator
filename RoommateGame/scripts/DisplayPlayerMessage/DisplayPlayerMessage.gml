
//displays a message telling the player what stats are too low
//to perform said task at this moment
function DisplayPlayerMessage(displayMessage, x, y){

draw_sprite(PlayerMessage, 0, x, y);
draw_text(x, y, displayMessage);

}