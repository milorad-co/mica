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
	global.selected = 666;
}
else
{
	if global.selected = 666 and mouse_check_button(mb_left)
	{
		instance_create_layer(mouse_x, mouse_y, "Instances", obj_filldraw, {image_blend: make_colour_rgb(global.red, global.green, global.beans), colourtarget: surface_getpixel(global.surf[global.target], mouse_x - 32, mouse_y)});
	}
}