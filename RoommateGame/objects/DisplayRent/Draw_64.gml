
//rent
draw_set_color(c_green);
draw_text_transformed(x, y, "Rent $ Due: " + string(ParentPlayer_o.rentDue), 3, 3, image_angle);
draw_text_transformed(x + 500, y, "Total $: " + string(ParentPlayer_o.totalMoney), 3, 3, image_angle);