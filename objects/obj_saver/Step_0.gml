repeat 5000
{
	_x --;
	c = surface_getpixel(global.surf[global.target], x, y);
	r = colour_get_red(c);
	g = colour_get_green(c);
	b = colour_get_blue(c);
	if g > 31 
	{
		if g != 34 
		{
			if g != 127 
			{
				if g != 129 
				{
					if g != 141 
					{
						if g != 143 or 144 
						{
							if g != 157 
							{
								if g != 160 
								{
									if g != 173 
									{
										savestring += chr(g);
									}
									else 
									{
										savestring += chr(172);
									}
								}
								else 
								{
									savestring += chr(159);
								}
							}
							else 
							{
								savestring += chr(156);
							}
						}
						else 
						{
							savestring += chr(142);
						}
					}
					else 
					{
						savestring += chr(140);
					}
				}
				else 
				{
					savestring += "€";
				}
			}
			else 
			{
				savestring += "~";
			}
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
	if b > 31
	{
		if b != 34
		{
			if b != 127 
			{
				if b != 129 
				{
					if b != 141 
					{
						if b != 143 or 144 
						{
							if b != 157 
							{
								if b != 160 
								{
									if b != 173 
									{
										savestring += chr(b);
									}
									else 
									{
										savestring += chr(172);
									}
								}
								else 
								{
									savestring += chr(159);
								}
							}
							else
							{
								savestring += chr(156);
							}
						}
						else
						{
							savestring += chr(142);
						}
					}
					else 
					{
						savestring += chr(140);
					}
				}
				else
				{
					savestring += "€";
				}
			}
			else 
			{
				savestring += "~";
			}
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
			if r != 127 
			{
				if r != 129 
				{
					if r != 141 
					{
						if r != 143 or 144 
						{
							if r != 157 
							{
								if r != 160 
								{
									if r != 173
									{
										savestring += chr(r);
									}
									else
									{
										savestring += chr(172);
									}
								}
								else 
								{
									savestring += chr(159);
								}
							}
							else 
							{
								savestring += chr(156);
							}
						}
						else 
						{
							savestring += chr(142);
						}
					}
					else 
					{
						savestring += chr(140);
					}
				}
				else 
				{
					savestring += "€";
				}
			}
			else 
			{
				savestring += "~";
			}
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
		x = 32;
		if _y < 1
		{
			instance_destroy();
		}
	}
}