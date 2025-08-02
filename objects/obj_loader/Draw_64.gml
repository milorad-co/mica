draw_text(0, 64, "Current Line Progress: " + string(x) + "/1600");
draw_text(0, 80, "Lines Complete: " + string(line) + "/800");
surface_set_target(draw);
if stop = 0
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
		draw_sprite_ext(spr_mifdraw, 0, x, y, 1, 1, 0, make_colour_rgb(r, g, b), 1);
		target ++;
		x ++;
		if _x < 1 
		{
			ini_open(game_save_id + readfile);
			contents = ini_read_string("mif", string(line), "u loser u have no line " + string(line));
			ini_close();
			target = 0;
			line ++;
			_x = xx;
			_y --;
			reset --;
			y ++;
			x = 0;
			if _y < 1
			{
				stop = 1;
			}
		}
	}
}
surface_reset_target();
draw_surface(draw, 0, 0);