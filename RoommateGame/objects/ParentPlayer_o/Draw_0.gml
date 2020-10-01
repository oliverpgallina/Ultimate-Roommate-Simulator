draw_set_color(c_green);
draw_text(850, 25, "Rent $$ Due: " + string(rentDue));
draw_text(1050, 25, "Total $$: " + string(totalMoney));

draw_set_color(c_yellow);
draw_text(500, 25, "P1 Grade: " + string(Player1_o.grade));
draw_text(650, 25, "P2 Grade: " + string(Player2_o.grade));

draw_set_color(c_red);
draw_text(250, 725, "P1 Action Points: " + string(Player1_o.actionPoints));
draw_text(500, 725, "P2 Action Points: " + string(Player2_o.actionPoints));

draw_set_color(c_blue);
draw_text(250, 750, "P1 Stress Points: " + string(Player1_o.stressPoints));
draw_text(500, 750, "P2 Stress Points: " + string(Player2_o.stressPoints));

draw_set_color(c_maroon);
if (Player1_o.hungerLevel == 1) Player1_o.hungerLvlString = "Sated";
else if (Player1_o.hungerLevel == 2) Player1_o.hungerLvlString = "Hungry";
else if (Player1_o.hungerLevel == 3) Player1_o.hungerLvlString = "Starving";

if (Player2_o.hungerLevel == 1) Player2_o.hungerLvlString = "Sated";
else if (Player2_o.hungerLevel == 2) Player2_o.hungerLvlString = "Hungry";
else if (Player2_o.hungerLevel == 3) Player2_o.hungerLvlString = "Starving";

draw_text(750, 725, "P1 Hunger LVL: " + string(Player1_o.hungerLvlString));
draw_text(1000, 725, "P2 Hunger LVL: " + string(Player2_o.hungerLvlString));
