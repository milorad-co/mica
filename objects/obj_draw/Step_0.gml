if mouse_check_button_released(mb_left) and (global.selected == 1 or global.selected == 5) 
{
	steps += 1;
}
if keyboard_check(vk_control) and keyboard_check(ord("Z")) and chill == 0
{
	if steps == -9999
	{
		instance_destroy();
	}
	steps -= 1;
	chill = 1;
}
if !(keyboard_check(vk_control) and keyboard_check(ord("Z"))) 
{
	chill = 0;
}
depth = steps;