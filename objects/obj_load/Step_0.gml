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
	global.selected = 3;
}
if global.selected == 3 and fname != "Cannot find file.\n" 
{
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
	if keyboard_check_pressed(vk_enter)
	{
		if file_exists(game_save_id + fname) 
		{
			ini_open(game_save_id + fname);
			result = ini_read_string("mif", "main", "FILETYPE_IS_NOT_MIF");
			if result == "FILETYPE_IS_NOT_MIF"
			{
				instance_destroy(obj_draw);
				spr_importedfile = sprite_add(game_save_id + fname, 1, false, false, 0, 0);
				obj_importedfile.sprite_index = spr_importedfile;
				obj_importedfile.image_yscale = 800 / obj_importedfile.sprite_height;
				obj_importedfile.image_xscale = 1600 / obj_importedfile.sprite_width;
				fname = "";
				global.selected = 0;
			}
			else
			{
				instance_create_layer(32, 0, "Instances", obj_loader, {fname: fname});
				fname = "";
				global.selected = 42;
			}
		}
		else
		{
			fname = "Cannot find file.\n"
			alarm_set(0, 90)
		}
	}
}
if global.selected != 3
{
	fname = ""
}
if global.saving = 1 
{
	visible = false;
}
else 
{
	visible = true;
}