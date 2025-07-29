repeat 200
{
	_x --;
	if place_meeting(x, y, obj_erase)
	{
		savestring += "255255255";
	}
	else
	{
		if place_meeting(x, y, obj_draw) or place_meeting(x, y, obj_drawline) or place_meeting(x, y, obj_stdraw_UNUSEDST)
		{
			savestring += string(colour_get_red(other.image_blend));
			savestring += string(colour_get_green(other.image_blend));
			savestring += string(colour_get_blue(other.image_blend));
		}
		else
		{
			savestring += "255255255";
		}
	}
	x += 4;
	if _x < 1
	{
		_x = 200;
		_y -= 1;
		y += 4;
		if _y < 1
		{
			rep -= 1;
			_y = 25;
			ini_open(game_save_id + "st.ini");
			ini_write_string("files", string(writefile), string_concat(ini_read_string("files", string(writefile), ""), savestring));
			ini_close();
			if rep < 1
			{
				savestring += "endendend";
				ini_open(game_save_id + "st.ini");
				ini_write_string("files", string(writefile), string_concat(ini_read_string("files", string(writefile), ""), savestring));
				ini_close();
				instance_destroy();
			}
		}
	}
}
alarm_set(0, 1);