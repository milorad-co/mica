if position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left) 
{
	filename = get_open_filename("*.png;*.jpg;*.jpeg", "");
	if filename != ""
	{
		instance_create_layer(0, 100, "Instances", obj_loader, {readfile : filename});
		filename = "";
	}
}