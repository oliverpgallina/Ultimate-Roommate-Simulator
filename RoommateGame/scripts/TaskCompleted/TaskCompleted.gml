// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//changes all the stats after a task is done
//IMPORTANT: all the stats are ADDED
function TaskCompleted(taskHunger, taskMoney, taskStress, taskStudy, taskTrash, player){
//show_message( object_get_name(player) );

player.hungerLevel += taskHunger;
ParentPlayer_o.totalMoney += taskMoney;
player.stressPoints += taskStress;
player.studyPoints += taskStudy;
Clock_o.trashLevel += taskTrash;

}