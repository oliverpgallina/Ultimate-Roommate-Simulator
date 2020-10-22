
/*
draw_set_color(c_red);
draw_text(250, 725, "P1 Action Points: " + string(Player1_o.actionPoints));
draw_text(500, 725, "P2 Action Points: " + string(Player2_o.actionPoints));

/*draw_set_color(c_aqua);
draw_text(250, 750, "P1 Stress Points: " + string(Player1_o.stressPoints));
draw_text(500, 750, "P2 Stress Points: " + string(Player2_o.stressPoints));
*/

if (Player1_o.hungerLevel == 1) Player1_o.hungerLvlString = "FULL";
else if (Player1_o.hungerLevel == 2) Player1_o.hungerLvlString = "HUNGRY";
else if (Player1_o.hungerLevel == 3) Player1_o.hungerLvlString = "STARVING";

if (Player2_o.hungerLevel == 1) Player2_o.hungerLvlString = "FULL";
else if (Player2_o.hungerLevel == 2) Player2_o.hungerLvlString = "HUNGRY";
else if (Player2_o.hungerLevel == 3) Player2_o.hungerLvlString = "STARVING";