if position_meeting(mouse_x, mouse_y, self)
{
	mouseon = 1;
}
else
{
	mouseon = 0;
}
if position_meeting(mouse_x, mouse_y, self) and mouse_check_button(mb_left)
{
	global.selected = 1;
}
else
{
	if global.selected = 1 and mouse_check_button(mb_left)
	{
		if global.set == 0
		{
			global.set = 1;
			global.target ++;
			global.surf[global.target] = surface_create(1600, 800);
			surface_copy(global.surf[global.target], 0, 0, global.surf[global.target - 1]);
			global.lastdrawnx = mouse_x;
			global.lastdrawny = mouse_y;
		}
		instance_create_layer(mouse_x, mouse_y, "Instances", obj_draw, {image_blend: make_colour_rgb(global.red, global.green, global.beans), image_xscale: xscale, image_yscale: yscale});
	}
}
if mouse_wheel_up()
{
	xscale += 0.1;
	yscale += 0.1;
}
if mouse_wheel_down()
{
	xscale -= 0.1;
	yscale -= 0.1;
}
if !(mouse_check_button(mb_left))
{
	global.lastdrawnx = -1;
	global.lastdrawny = -1;
	global.set = 0;
}