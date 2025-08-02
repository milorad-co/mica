repeat 1600 {
	_x --;
	str = string_char_at(contents, target);
	r = ord(str);
	target ++;
	str = string_char_at(contents, target);
	g = ord(str);
	target ++;
	str = string_char_at(contents, target);
	b = ord(str);
	target ++;
	if make_color_rgb(r, g, b) != c_white {
		instance_create_layer(x, y, "Instances", obj_loaddraw, {image_blend : make_colour_rgb(r, g, b)});
	}
	x ++;
	if _x < 1 {
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
			instance_destroy();
		}
	}
}