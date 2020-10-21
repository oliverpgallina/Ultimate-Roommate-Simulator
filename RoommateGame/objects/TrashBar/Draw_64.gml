
barTrashLevel = Clock_o.trashLevel;
barTrashLevel = clamp(barTrashLevel, minValue, maxValue);

draw_text(x,y - 30, statName);

draw_sprite_stretched(bgSprite, 0, x - 5, y - 5, 30, 110);
draw_sprite_stretched(sprite, 0, x, y, barWidth, (barTrashLevel / maxValue) * barHeight);