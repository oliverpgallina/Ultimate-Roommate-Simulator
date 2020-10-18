// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//changes all the stats after a task is done
//IMPORTANT: all the stats are ADDED
function TaskCompleted(taskAction, taskHunger, taskMoney, taskStress, taskStudy, taskTrash, taskScorePoints, player){
//show_message( object_get_name(player) );

//For the Sleep action, since regenerating works in kinda a weird way
if (taskName == "SLEEP") player.regenerating = true;

player.actionPoints += taskAction;
player.actionPoints = clamp(player.actionPoints, player.minActionPoints, player.maxActionPoints);

player.hungerLevel += taskHunger;
player.hungerLevel = clamp(player.hungerLevel, player.minHungerLevel, player.maxHungerLevel);

player.stressPoints += taskStress;
player.stressPoints = clamp(player.stressPoints, player.minStressPoints, player.maxStressPoints);

Clock_o.trashLevel += taskTrash;
Clock_o.trashLevel = clamp(Clock_o.trashLevel, 0, 6);

player.studyPoints += taskStudy;
ParentPlayer_o.totalMoney += taskMoney;

audio_play_sound(taskSound, 1, false);

if(player == Player1_o) global.PlayerOneScore += taskScorePoints;
if(player == Player2_o) global.PlayerTwoScore += taskScorePoints;

}