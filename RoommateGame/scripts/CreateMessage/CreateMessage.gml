
//creates a message for the player when they can't interact with a task
function CreateMessage(player){

newMessage = "";
if (player.panicked) newMessage += "I'm panicking";
if(player.hungerLevel == 3) newMessage += "I'm too hungry";
if(player.actionPoints == 0) newMessage += "I'm exausted";

player.playerMessage = newMessage;
}