repeat 1600
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
	target ++;
	if make_color_rgb(r, g, b) != c_white
	{
		instance_create_layer(x, y, "Instances", obj_loaddraw, {image_blend : make_colour_rgb(r, g, b)});
	}
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
		if reset < 1
		{
			reset = 100;
			screen_save_part(game_save_id + "__milorad_image_format_loading_helper.png", 0, 125, display_get_width(), 100 * reseted);
			spr_importedfile = sprite_add(game_save_id + "__milorad_image_format_loading_helper.png", 1, false, false, 0, 0);
			file_delete(game_save_id + "__milorad_image_format_loading_helper.png");
			obj_importedfile.sprite_index = spr_importedfile;
			instance_destroy(obj_loaddraw);
			reseted ++;
		}
		if _y < 1
		{
			instance_destroy();
		}
	}
}