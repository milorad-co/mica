if global.selected == 2
{
	if numberask == 1
	{
		draw_text(32, 800, "Please input a number from 0 to 255 for the RED value of the\ncolour.");
		draw_text(32, 816, "	" + numstring);
	}
	if numberask == 2
	{
		draw_text(32, 800, "Please input a number from 0 to 255 for the GREEN value of the\ncolour.");
		draw_text(32, 816, "	" + numstring);
	}
	if numberask == 3
	{
		draw_text(32, 800, "Please input a number from 0 to 255 for the BEANS value of the\ncolour.");
		draw_text(32, 816, "	" + numstring);
	}
}
if mouseon == 1
{
	draw_set_colour(c_ltgrey);
	draw_rectangle(mouse_x + 32, mouse_y, mouse_x + 32 + string_width("Colour Picker\n     Allows you to choose the colour you are drawing with."), mouse_y + 40, false);
	draw_set_colour(c_black);
	draw_text(mouse_x + 32, mouse_y, "Colour Picker\n     Allows you to choose the colour you are drawing with.");
}
