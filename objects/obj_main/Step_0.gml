if keyboard_check(vk_control) and keyboard_check(ord("Z")) and global.target > 0 and chill == 0
{
	global.target --;
	chill = 1;
}
if !(keyboard_check(vk_control) and keyboard_check(ord("Z"))) 
{
	chill = 0;
}