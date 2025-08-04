if position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)
{
	filename = get_save_filename("*.mif", "");
	if filename != ""
	{
		ini_open(game_save_id + filename + ".mif");
		instance_create_layer(0, 100, "Instances", obj_saver, {writefile : filename});
		filename = "";
	}
}