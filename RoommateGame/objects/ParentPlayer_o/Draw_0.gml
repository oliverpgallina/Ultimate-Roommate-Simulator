draw_set_color(c_white);
draw_text(850, 25, "Rent $$ Due: " + string(rentDue));
draw_text(1050, 25, "Total $$: " + string(totalMoney));


draw_text(500, 25, "P1 Grade: " + string(Player1_o.grade));
draw_text(650, 25, "P2 Grade: " + string(Player2_o.grade));
draw_text(500, 40, "P1 Stress Points: " + string(Player1_o.stressPoints));
draw_text(700, 40, "P2 Stress Points: " + string(Player2_o.stressPoints));

draw_text(250, 75, "P1 Action Points: " + string(Player1_o.actionPoints));
draw_text(250, 100, "P2 Action Points: " + string(Player2_o.actionPoints));
