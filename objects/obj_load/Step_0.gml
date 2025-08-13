if position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left) 
{
	global.selected = 3;
}
if global.selected == 3 and wordstring != "Cannot find file.\n" 
{
	if keyboard_check_pressed(vk_anykey) and !(keyboard_check_pressed(vk_enter))
	{
		wordstring += string(keyboard_string);
		keyboard_string = "";
	}
	if keyboard_check_pressed(vk_backspace)
	{
		wordstring = string_delete(wordstring, string_length(wordstring), 1);
		keyboard_string = "";
	}
	if keyboard_check_pressed(vk_enter)
	{
		if file_exists(program_directory + wordstring) 
		{
			ini_open(program_directory + wordstring);
			result = ini_read_string("mif", "main", "FILETYPE_IS_NOT_MIF");
			if result == "FILETYPE_IS_NOT_MIF"
			{
				instance_destroy(obj_draw);
				spr_importedfile = sprite_add(program_directory + wordstring, 1, false, false, 0, 0);
				obj_importedfile.sprite_index = spr_importedfile;
				obj_importedfile.image_yscale = 800 / obj_importedfile.sprite_height;
				obj_importedfile.image_xscale = 1600 / obj_importedfile.sprite_width;
				wordstring = "";
				global.selected = 0;
			}
			else
			{
				instance_create_layer(32, 0, "Instances", obj_loader, {readfile : wordstring});
				wordstring = "";
				global.selected = 42;
			}
		}
		else
		{
			wordstring = "Cannot find file.\n"
			alarm_set(0, 90)
		}
	}
}
if global.selected != 3
{
	wordstring = ""
}
if global.saving = 1 
{
	visible = false;
}
else 
{
	visible = true;
}