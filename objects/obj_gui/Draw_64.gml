if global.saving == 0 and instance_exists(obj_saver)
{
	draw_text(x, y, "Brush Size: " + string(obj_paint.xscale * 8));
	draw_text(x, y - 20, "Files are saved to and loaded from " + game_save_id);
}