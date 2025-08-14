if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, self)
{
	global.selected = 6;
    result = [];
    file = file_find_first(game_save_id + "*", 0);
    while(file != "")
	{
        array_push(result, file);
        file = file_find_next();
    }
}
if global.saving = 1
{
	visible = false;
}
else
{
	visible = true;
}