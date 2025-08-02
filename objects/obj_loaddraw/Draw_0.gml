repeat array_length(global.col)
{
	draw_sprite_ext(spr_draw, 0, xtarget, ytarget, 1, 1, 0, global.col[target], 1);
	target ++;
	if xtarget = 1600
	{
		ytarget ++;
		xtarget = 0;
	}
}
target = 0;
xtarget = 0;
ytarget = 0;