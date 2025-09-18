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
	global.selected = 99.9995;
}
else
{
	if global.selected == 99.9995 and mouse_check_button_released(mb_left) and !(position_meeting(mouse_x, mouse_y, self))
	{
		targetx[array_length(targetx)] = mouse_x;
		targety[array_length(targety)] = mouse_y;
	}
}
if global.selected != 99.9995
{
	targetx = [];
	targety = [];
}