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
			global.lastdrawnx = mouse_x;
			global.lastdrawny = mouse_y;
		}
		instance_create_layer(mouse_x, mouse_y, "Instances", obj_draw, {image_blend : make_colour_rgb(global.red, global.green, global.beans), image_xscale : xscale, image_yscale : yscale, active : 1})
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
if global.saving = 1
{
	visible = false;
}
else
{
	visible = true;
}
if !(mouse_check_button(mb_left))
{
	global.lastdrawnx = -1;
	global.lastdrawny = -1;
}