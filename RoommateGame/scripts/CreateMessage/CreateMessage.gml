
//creates a message for the player when they can't interact with a task
function CreateMessage(player, task){

switch (task) {
    case StudyTask_o:
        // code here
        break;
    default:
        // code here
        break;
}


newMessage = "";
if (player.panicked) newMessage += "I'm panicking";
if(player.hungerLevel == 3) newMessage += "\n I'm too hungry";
if(player.actionPoints == 0) newMessage += "\n I'm exausted";

player.playerMessage = newMessage;
}