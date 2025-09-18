if position_meeting(mouse_x, mouse_y, self)
{
	mouseon = 1;
}
else
{
	mouseon = 0;
}
if position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left) 
{
	global.selected = 32;
}
if global.selected == 32
{
	if keyboard_check_pressed(vk_enter) 
	{
		if filename_ext(fname) == ".mif"
		{
			ini_open(game_save_id + fname);	
			instance_create_layer(32, 0, "Instances", obj_saver, {fname: fname});
		}
		else
		{
			screen_save_part(game_save_id + fname, 32, 0, 1600, 800);
		}
		global.selected = -32;
	}
	if keyboard_check_pressed(vk_anykey) and !(keyboard_check_pressed(vk_enter))
	{
		fname += string(keyboard_string);
		keyboard_string = "";
	}
	if keyboard_check_pressed(vk_backspace) 
	{
		fname = string_delete(fname, string_length(fname), 1);
		keyboard_string = "";
	}
}
if global.selected != 32
{
	fname = "";
}