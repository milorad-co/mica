repeat 1600
{
	// i call it a screen-to-mif plug, 'cause it rhymes with grug
	_x --;
	c = surface_getpixel(global.surf[global.target], x, y);
	r = colour_get_red(c);
	g = colour_get_green(c);
	b = colour_get_blue(c);
	if g < 32
	{
		savestring += " ";
	}
	else
	{
		switch (g)
		{
			case 34:
				savestring += "#";
			break;
			case 127:
				savestring += "~";
			break;
			case 129:
				savestring += "€";
			break;
			case 141:
				savestring += "Œ";
			break;
			case 143:
				savestring += "Ž";
			break;
			case 144:
				savestring += "Ž";
			break;
			case 157:
				savestring += "œ";
			break;
			case 173:
				savestring += "¬";
			break;
			default:
				savestring += chr(g);
			break;
		}
	}
	if b < 32
	{
		savestring += " ";
	}
	else
	{
		switch (b)
		{
			case 34:
				savestring += "#";
			break;
			case 127:
				savestring += "~";
			break;
			case 129:
				savestring += "€";
			break;
			case 141:
				savestring += "Œ";
			break;
			case 143:
				savestring += "Ž";
			break;
			case 144:
				savestring += "Ž";
			break;
			case 157:
				savestring += "œ";
			break;
			case 173:
				savestring += "¬";
			break;
			default:
				savestring += chr(b);
			break;
		}
	}
	if r < 32
	{
		savestring += " ";
	}
	else
	{
		switch (r)
		{
			case 34:
				savestring += "#";
			break;
			case 127:
				savestring += "~";
			break;
			case 129:
				savestring += "€";
			break;
			case 141:
				savestring += "Œ";
			break;
			case 143:
				savestring += "Ž";
			break;
			case 144:
				savestring += "Ž";
			break;
			case 157:
				savestring += "œ";
			break;
			case 173:
				savestring += "¬";
			break;
			default:
				savestring += chr(r);
			break;
		}
	}
	x ++;
	if _x < 1
	{
		ini_open(game_save_id + fname);
		ini_write_string("mif", string(line), savestring);
		ini_close();
		savestring = "";
		line ++;
		_x = 1600;
		_y --;
		y ++;
		x = 32;
		if _y < 1
		{
			instance_destroy();
		}
	}
}