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
	global.selected = 4242;
}
else
{
	if global.selected = 4242 and mouse_check_button(mb_left) and targetx == -1
	{
		targetx = mouse_x;
		targety = mouse_y;
	}
}