if position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)
{
	global.selected = 13;
}
if global.selected == 13 and wordstring != "Cannot find file.\n"
{
	if keyboard_check_pressed(vk_anykey)
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
		if file_exists(wordstring)
		{
			loading = 1;
			instance_destroy(obj_draw);
			ini_open(game_save_id + wordstring);
			contents = ini_read_string("mif", "main", "!MIF![1600](700)");
			ini_close();
			sqrstart = string_pos("[", contents);
			sqrend = string_pos("]", contents);
			curstart = string_pos("(", contents);
			curend = string_pos(")", contents);
			target = sqrstart + 1;
			do
			{
				length += string_char_at(contents, target);
				target ++;
			}
			until(target == sqrend)
			length = real(length);
			xx = length;
			length = "";
			target = curstart + 1;
			do
			{
				length += string_char_at(contents, target);
				target ++;
			}
			until(target == curend)
			length = real(length);
			yy = length;
			repeat yy
			{
				target = 0;
				ini_open(game_save_id + wordstring);
				contents = ini_read_string("mif", string(line), "u loser u have no line " + string(line));
				ini_close();
				repeat xx
				{
					str = string_char_at(contents, target);
					red = ord(str);
					target ++;
					str = string_char_at(contents, target);
					green = ord(str);
					target ++;
					str = string_char_at(contents, target);
					beans = ord(str);
					target ++;
					if make_color_rgb(red, green, beans) != c_white
					{
						instance_create_layer(_x, _y, "Instances", obj_loaddraw, {image_blend : make_colour_rgb(red, green, beans)});
					}
					_x ++;
				}
				line ++;
				target = 0;
				ini_open(game_save_id + wordstring);
				contents = ini_read_string("mif", string(line), "u loser u have no line " + string(line));
				ini_close();
				_x = 0;
				_y ++;
			}
			wordstring = "";
			global.selected = 42;
		}
		else
		{
			wordstring = "Cannot find file.\n"
			alarm_set(0, 90)
		}
	}
}
if global.selected != 13
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