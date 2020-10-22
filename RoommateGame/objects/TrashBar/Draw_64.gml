
barTrashLevel = Clock_o.trashLevel;
barTrashLevel = clamp(barTrashLevel, minValue, maxValue);

draw_sprite_stretched(bgSprite, 0, x - 5, y - 5, 30, 110);
draw_sprite_stretched(sprite, 0, x, y, barWidth, barHeight);

//this is actually an inverted bar, because the draw sprite stretched methods kinda sucks
draw_sprite_stretched(bgSprite, 0, x, y, barWidth, (1 - (barTrashLevel / (maxValue - 1))) * barHeight );

draw_text( x - 40, y + 100, statName);