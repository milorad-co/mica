if global.selected == 2
{
	if numberask == 1
	{
		draw_text(x, y + 64, "Please input a number from 0 to 255 for the RED value of the\ncolour.");
		draw_text(x, y + 80, "	" + numstring);
	}
	if numberask == 2
	{
		draw_text(x, y + 64, "Please input a number from 0 to 255 for the GREEN value of the\ncolour.");
		draw_text(x, y + 80, "	" + numstring);
	}
	if numberask == 3
	{
		draw_text(x, y + 64, "Please input a number from 0 to 255 for the BEANS value of the\ncolour.");
		draw_text(x, y + 80, "	" + numstring);
	}
}