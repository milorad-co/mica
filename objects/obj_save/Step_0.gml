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
	stage = 1;
	global.selected = 32;
}
if global.selected == 32 and fname != "Incorrect input.\n" 
{
	if keyboard_check_pressed(vk_enter) 
	{
		if stage == 2
		{
			if type == 0
			{
				screen_save_part(game_save_id + fname + ".png", 32, 0, 1600, 800);
			}
			else
			{
				ini_open(game_save_id + fname + ".mif");	
				instance_create_layer(32, 0, "Instances", obj_saver, {writefile : fname});
			}
			global.selected = -32;
		}
		if stage == 1
		{
			if fname == "0"
			{
				stage = 2;
				type = 0;
				fname = "";
			}
			else
			{
				if fname == "1"
				{
					stage = 2;
					type = 1;
					fname = "";
				}
				else
				{
					fname = "Incorrect input.\n"
					alarm_set(0, 90);
				}
			}
		}
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
	stage = 0;
	type = 0;
	fname = "";
}