if global.selected == 13
{
	draw_text(x, y + 64, "Please input the name of a file that is or has been converted from .mif.\n     " + string(wordstring))
}
if loading = 1
{
	draw_text(0, 100, "Current Line Progress: " + string(target) + "/1600")
	draw_text(0, 116, "Lines Loaded: " + string(line) + "/800")
}