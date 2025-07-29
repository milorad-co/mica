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
			instance_destroy(obj_draw);
			file = file_text_open_read(game_save_id + wordstring);
			contents = file_text_read_string(file);
			if string_char_at(contents, 1) = "{"
			{
				_end = string_pos("}", contents);
				target = 2;
				do
				{
					length += string_char_at(contents, target);
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
							pixelred += string_char_at(contents, target);
							target ++;
						}
						repeat 3
						{
							pixelgreen += string_char_at(contents, target);
							target ++;
						}
						repeat 3
						{
							pixelbeans += string_char_at(contents, target);
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
				until(string_char_at(contents, target) = "e")
				wordstring = "";
				global.selected = 3;
				file_text_close(file);
			}
			else
			{
				wordstring = "The file has a corrupted or invalid structure.\n";
				file = "";
				contents = "";
			}
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