if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, self)
{
	global.selected = 6;
    result = [];
    file = file_find_first(game_save_id + "*.mif", 0);
    while(file != "")
	{
        array_push(result, file);
        file = file_find_next();
    }
    file_find_close();
    file = file_find_first(game_save_id + "*.png", 0);
    while(file != "")
	{
        array_push(result, file);
        file = file_find_next();
    }
    file_find_close();
    file = file_find_first(game_save_id + "*.jpg", 0);
    while(file != "")
	{
        array_push(result, file);
        file = file_find_next();
    }
    file_find_close();
    file = file_find_first(game_save_id + "*.jpeg", 0);
    while(file != "")
	{
        array_push(result, file);
        file = file_find_next();
    }
    file_find_close();
}
if global.saving = 1
{
	visible = false;
}
else
{
	visible = true;
}