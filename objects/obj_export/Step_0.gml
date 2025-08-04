if position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left) 
{
	filename = get_save_filename("*.png", "");
	if filename != ""
	{
		screen_save_part(game_save_id + filename, 0, 100, 1600, 800);
		filename = "";
	}
}