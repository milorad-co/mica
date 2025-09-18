if mouseon == 1
{
	draw_set_colour(c_ltgrey);
	draw_rectangle(mouse_x + 32, mouse_y, mouse_x + 32 + string_width("Fill\n     Bad idea."), mouse_y + 40, false);
	draw_set_colour(c_black);
	draw_text(mouse_x + 32, mouse_y, "Fill\n     Bad idea.");
	draw_set_colour(c_white);
	draw_surface(global.surf[global.target], 32, 0);
}
