if global.selected == 32
{
	if stage == 1
	{
		draw_text(32, 800, "Save as a png or mif? 0 for png, 1 for mif.");
		draw_text(32, 816, "    " + fname);
	}
	if stage == 2
	{
		if type = 0
		{
			draw_text(32, 800, "What will the name of the saved file be?");
			draw_text(32, 816, "    " + fname + ".png");
		}
		else
		{
			draw_text(32, 800, "What will the name of the saved file be?");
			draw_text(32, 816, "    " + fname + ".mif");
		}
	}
}