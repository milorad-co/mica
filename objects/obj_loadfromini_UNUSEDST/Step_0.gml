if position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)
{
	global.selected = 11;
}
if global.selected == 11 and wordstring != "Cannot find key.\n"
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
		ini_open(game_save_id + "st.ini");
		if ini_key_exists("files", wordstring)
		{
			instance_destroy(obj_draw);
			key = ini_read_string("files", wordstring, "{3}255000000255000000255000000000255000000255000000255000000000255000000255000000255");
			if string_char_at(key, 1) = "{"
			{
				_end = string_pos("}", key);
				target = 3;
				do
				{
					length += string_char_at(key, target);
					target ++;
				}
				until(target == _end)
				length = real(length);
				yy = length;
				target ++;
				do
				{
					repeat length
					{
						repeat 3
						{
							pixelred += string_char_at(key, target);
							target ++;
						}
						repeat 3
						{
							pixelgreen += string_char_at(key, target);
							target ++;
						}
						repeat 3
						{
							pixelbeans += string_char_at(key, target);
							target ++;
						}
						if pixelred + pixelgreen + pixelbeans != "endendend"
						{
							pixelred = real(pixelred);
							pixelgreen = real(pixelgreen);
							pixelbeans = real(pixelbeans);
							instance_create_layer(x, y, "Instances", obj_stdraw_UNUSEDST, {image_blend : make_colour_rgb(pixelred, pixelgreen, pixelbeans), x : _x, y : _y})
							pixelred = "";
							pixelgreen = "";
							pixelbeans = "";
						}
						_x ++;
					}
					_y ++;
					_x = 0;
				}
				until(string_char_at(key, target) = "e")
				wordstring = "";
				global.selected = 0;
				ini_close();
			}
			else
			{
				wordstring = "The key has a corrupted or invalid structure.\n";
				key = "";
			}
		}
		else
		{
			wordstring = "Cannot find key.\n"
			alarm_set(0, 90)
		}
	}
}
if global.selected != 11
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