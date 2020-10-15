
//draws the bar every frame 

if(showBar){
draw_text(x ,y - 20, taskName);
draw_sprite(BarBackground, 0, barX, barY);

currValue += (alarm[0] / room_speed);
	if(currValue > maxTotal){
	currValue = maxTotal;
	
	//show_message("Task Complete!")
	TaskCompleted(taskAction, taskHunger, taskMoney, taskStress, taskStudy, taskTrash, taskScorePoints, player);
	taskCanInteract = false;
	alarm[1] = room_speed * .01;
	}

draw_sprite_stretched(RedBarFill, 0, barX, barY, (currValue/maxTotal) * barWidth, barHeight);
}
else{
draw_sprite(sprite_index, 0, x, y);
}

//the clamp method legit doesn't work
// why game maker, why?