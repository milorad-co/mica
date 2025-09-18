if global.selected == 3
{
	draw_text(32, 800, "Please input the name of a file that is of the PNG or JPG file format.");
	draw_text(32, 816, "    " + fname);
}
if mouseon == 1
{
	draw_set_colour(c_ltgrey);
	draw_rectangle(mouse_x + 32, mouse_y, mouse_x + 32 + string_width("Load\n     Loads PNG and JPG images from " + game_save_id), mouse_y + 40, false);
	draw_set_colour(c_black);
	draw_text(mouse_x + 32, mouse_y, "Load\n     Loads PNG and JPG images from " + game_save_id);
}
