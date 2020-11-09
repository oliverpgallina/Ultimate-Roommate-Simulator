//this could be declared in the create function 
//but since the script is inherited and then overrided 
//we would get an error
//it is being declared here for ease of implementation

//draws the bar every frame 

if(showBar){
	draw_text(x ,y - 20, taskName);
	draw_sprite(BarBackground, 0, barX, barY);
	
	if(isInteracting){
		currValue += maxTotal / (60 * taskTTC);

		show_debug_message("current value " + string(currValue));

		if(currValue > maxTotal){
			currValue = maxTotal;
	
			//show_message("Task Complete!")
			TaskCompleted(taskAction, taskHunger, taskMoney, taskStress, taskStudy, taskTrash, taskScorePoints, player);
			taskCanInteract = false;
			alarm[1] = room_speed * 0.1;
		}

		draw_sprite_stretched(RedBarFill, 0, barX, barY, (currValue/maxTotal) * barWidth, barHeight);
	}
}
else{
	draw_sprite(sprite_index, 0, x, y);
}