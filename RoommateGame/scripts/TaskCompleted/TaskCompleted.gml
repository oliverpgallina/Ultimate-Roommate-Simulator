// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//changes all the stats after a task is done
//IMPORTANT: all the stats are ADDED
function TaskCompleted(taskAction, taskHunger, taskMoney, taskStress, taskStudy, taskTrash, taskScorePoints, player){
//show_message( object_get_name(player) );

player.actionPoints += taskAction;
player.hungerLevel += taskHunger;
player.hungerLevel = clamp(player.hungerLevel, 1, 3);

ParentPlayer_o.totalMoney += taskMoney;
player.stressPoints += taskStress;
player.studyPoints += taskStudy;
Clock_o.trashLevel += taskTrash;
audio_play_sound(taskSound, 1, false);

if(player == Player1_o) global.PlayerOneScore += taskScorePoints;
if(player == Player2_o) global.PlayerTwoScore += taskScorePoints;

}