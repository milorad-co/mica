if global.selected == 32
{
	draw_text(32, 800, "What will the name of the saved file be?");
	draw_text(32, 816, "    " + fname);
}
if mouseon == 1
{
	draw_set_colour(c_ltgrey);
	draw_rectangle(mouse_x + 32, mouse_y, mouse_x + 32 + string_width("Save\n     Saves images to " + game_save_id), mouse_y + 40, false);
	draw_set_colour(c_black);
	draw_text(mouse_x + 32, mouse_y, "Save\n     Saves PNG images to " + game_save_id);
}