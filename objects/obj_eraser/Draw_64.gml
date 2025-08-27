if mouseon == 1
{
	draw_set_colour(c_ltgrey);
	draw_rectangle(mouse_x + 32, mouse_y, mouse_x + 32 + string_width("Eraser\n     Erases pixels and sets their colour to white."), mouse_y + 40, false);
	draw_set_colour(c_black);
	draw_text(mouse_x + 32, mouse_y, "Eraser\n     Erases pixels and sets their colour to white.");
}
