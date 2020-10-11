draw_set_color(c_green);
draw_text(850, 10, "Rent $$ Due: " + string(rentDue));
draw_text(1050, 10, "Total $$: " + string(totalMoney));

draw_set_color(c_black);
draw_text(500, 10, "P1 Grade: " + string(Player1_o.grade));
draw_text(650, 10, "P2 Grade: " + string(Player2_o.grade));

draw_set_color(c_red);
draw_text(250, 725, "P1 Action Points: " + string(Player1_o.actionPoints));
draw_text(500, 725, "P2 Action Points: " + string(Player2_o.actionPoints));

draw_set_color(c_aqua);
draw_text(250, 750, "P1 Stress Points: " + string(Player1_o.stressPoints));
draw_text(500, 750, "P2 Stress Points: " + string(Player2_o.stressPoints));

draw_set_color(c_maroon);
if (Player1_o.hungerLevel == 1) Player1_o.hungerLvlString = "FULL";
else if (Player1_o.hungerLevel == 2) Player1_o.hungerLvlString = "HUNGRY";
else if (Player1_o.hungerLevel == 3) Player1_o.hungerLvlString = "STARVING";

if (Player2_o.hungerLevel == 1) Player2_o.hungerLvlString = "FULL";
else if (Player2_o.hungerLevel == 2) Player2_o.hungerLvlString = "HUNGRY";
else if (Player2_o.hungerLevel == 3) Player2_o.hungerLvlString = "STARVING";

draw_text(35, 450, string(Player1_o.hungerLvlString));
draw_text(1235, 445, string(Player2_o.hungerLvlString));
