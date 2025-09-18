if mouseon == 1
{
	draw_set_colour(c_ltgrey);
	draw_rectangle(mouse_x + 32, mouse_y, mouse_x + 32 + string_width("Polyline\n     Select a bunch of points and then press enter to draw lines between all of them!"), mouse_y + 40, false);
	draw_set_colour(c_black);
	draw_text(mouse_x + 32, mouse_y, "Polyline\n     Select a bunch of points and then press enter to draw lines between all of them!");
	draw_set_colour(c_white);
}
if global.selected == 99.9995 and keyboard_check_pressed(vk_enter)
{
	global.target ++;
	global.surf[global.target] = surface_create(1600, 800);
	surface_copy(global.surf[global.target], 0, 0, global.surf[global.target - 1]);
	index = 0;
	surface_set_target(global.surf[global.target]);
	repeat array_length(targetx) - 1
	{
		draw_set_colour(make_colour_rgb(global.red, global.green, global.beans));
		draw_line_width(targetx[index] - 32, targety[index], targetx[index + 1] - 32, targety[index + 1], obj_paint.xscale * 16);
		index ++;
	}
	surface_reset_target();
	targetx = [];
	targety = [];
}
