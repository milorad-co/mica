if position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left) 
{
	filename = get_open_filename("*.png;*.jpg;*.jpeg", "");
	if filename != ""
	{
		spr_importedfile = sprite_add(filename, 1, false, false, 0, 0);
		obj_importedfile.sprite_index = spr_importedfile;
		filename = "";
	}
}