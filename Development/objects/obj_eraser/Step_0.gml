if position_meeting(mouse_x, mouse_y, self) and mouse_check_button(mb_left)
{
	global.selected = 5;
}
else
{
	if global.selected = 5 and mouse_check_button(mb_left)
	{
		if global.set == 0
		{
			global.set = 1;
			global.lastdrawnx = mouse_x;
			global.lastdrawny = mouse_y;
		}
		instance_create_layer(mouse_x, mouse_y, "Instances", obj_draw, {active : 1})
	}
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