if mouseon == 1
{
	draw_set_colour(c_ltgrey);
	draw_rectangle(mouse_x + 32, mouse_y, mouse_x + 32 + string_width("Line\n     Easily draw straight lines."), mouse_y + 40, false);
	draw_set_colour(c_black);
	draw_text(mouse_x + 32, mouse_y, "Line\n     Easily draw straight lines.");
	draw_set_colour(c_white);
}
if targetx != -1 and global.selected = 86
{
	if !(mouse_check_button(mb_left))
	{
		global.target ++;
		global.surf[global.target] = surface_create(1600, 800);
		surface_copy(global.surf[global.target], 0, 0, global.surf[global.target - 1]);
		surface_set_target(global.surf[global.target]);
		draw_set_colour(make_colour_rgb(global.red, global.green, global.beans));
		draw_line_width(targetx - 32, targety, mouse_x - 32, mouse_y, obj_paint.xscale * 14);
		surface_reset_target();
		targetx = -1;
		targety = -1;
	}
	else
	{
		draw_set_colour(make_colour_rgb(global.red, global.green, global.beans));
		draw_line_width(targetx, targety, mouse_x, mouse_y, obj_paint.xscale * 14);
	}
}