if stop == 0
{
	draw_text(32, 800, "Lines Loaded: " + string(line) + "/800");
}
surface_set_target(draw);
if stop == 0
{
	repeat 3200
	{
		_x --;
		str = string_char_at(contents, target);
		r = ord(str);
		target ++;
		str = string_char_at(contents, target);
		g = ord(str);
		target ++;
		str = string_char_at(contents, target);
		b = ord(str);
		draw_sprite_ext(spr_mifdraw, 0, x - 32, y, 1, 1, 0, make_colour_rgb(r, g, b), 1);
		target ++;
		x ++;
		if _x < 1
		{
			ini_open(game_save_id + readfile);
			contents = ini_read_string("mif", string(y), "NO_LINE_FOUND");
			ini_close();
			target = 0;
			line ++;
			_x = xx;
			_y --;
			reset --;
			y ++;
			x = 32;
			if _y < 1
			{
				stop = 1;
			}
		}
	}
}
surface_reset_target();
draw_surface(draw, 32, 0);