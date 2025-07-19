repeat 1600
{
	_x --;
	r = colour_get_red(draw_getpixel(x, y));
	g = colour_get_green(draw_getpixel(x, y));
	b = colour_get_blue(draw_getpixel(x, y));
	if r > 31
	{
		savestring += chr(r);
	}
	if g > 31
	{
		savestring += chr(g);
	}
	if b > 31
	{
		savestring += chr(b);
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
		if _y < 1
		{
			instance_destroy();
		}
	}
}	
alarm_set(0, 1);