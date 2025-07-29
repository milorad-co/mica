repeat 1200
{
	_x --;
	c = c_black;
	c = draw_getpixel(x, y);
	r = colour_get_red(c);
	g = colour_get_green(c);
	b = colour_get_blue(c);
	if g > 31 {
		if g != 34 {
			if g != 127 {
				savestring += chr(g);
			}
			else {
				savestring += "~";
			}
		}
		else {
			savestring += "#";
		}
	}
	else
	{
		savestring += " ";
	}
	if b > 31
	{
		if b != 34
		{
			savestring += chr(b);
		}
		else
		{
			savestring += "#";
		}
	}
	else
	{
		savestring += " ";
	}	
	if r > 31
	{
		if r != 34
		{
			savestring += chr(r);
		}
		else
		{
			savestring += "#";
		}
	}
	else
	{
		savestring += " ";
	}
	x ++;
	if _x < 1
	{
		ini_open(game_save_id + writefile + ".mif");
		ini_write_string("mif", string(line), savestring);
		ini_close();
		savestring = "";
		line ++;
		_x = 1600;
		_y --;
		y ++;
		x = 0;
		if _y < 1
		{
			instance_destroy();
		}
	}
}