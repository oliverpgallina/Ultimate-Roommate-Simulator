
//displays a message telling the player what stats are too low
//to perform said task at this moment
function DisplayPlayerMessage(displayMessage, x, y){

spriteX = x + 30;
spriteY = y - 160;
messageX = spriteX + 20;
messageY = spriteY + 10;

draw_sprite(PlayerMessage, 0, spriteX, spriteY);
draw_set_valign(fa_top);
draw_text(messageX, messageY, displayMessage);

show_debug_message("sprite X:" + string(spriteX));
show_debug_message("sprite Y:" + string(spriteY));
show_debug_message("message X:" + string(messageX));
show_debug_message("message Y:" + string(messageY));

}