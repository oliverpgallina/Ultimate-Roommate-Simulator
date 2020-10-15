// draws the UI clock stuff

//somehow my math worked
timeOffset = 59 / timeRemaining;
minutes = (timeRemaining  - (alarm[0] / room_speed)) * timeOffset;

if(round(minutes) < 10) drawMinutes = "0" + string(round(minutes));
else drawMinutes = string(round(minutes));

if(currentTime < 10) drawHours = "0" + string(currentTime);
else drawHours = string(currentTime);

draw_set_color(c_green);
draw_text_transformed(x, y + 40, "Rent $ Due: " + string(ParentPlayer_o.rentDue), 3, 3, image_angle);
draw_text_transformed(x + 500, y + 40, "Total $: " + string(ParentPlayer_o.totalMoney), 3, 3, image_angle);

draw_set_color(c_black)
draw_text_transformed(x - 225, y - 195 , "Weekly \nTest Grades \n" + string(Player1_o.grade), 1, 1, image_angle);
draw_text_transformed(x + 975, y - 200 , "Weekly \nTest Grades \n" + string(Player2_o.grade), 1, 1, image_angle);


draw_set_color(c_white);
draw_text_transformed(x + 250, y-5, "Day: " + string(day), 3, 3, image_angle);
draw_text_transformed(x + 550, y-5, "Month: " + currentMonth, 3, 3, image_angle);
draw_text_transformed(x, y-5, drawHours + ":" + drawMinutes, 3, 3, image_angle);