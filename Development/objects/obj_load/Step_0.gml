if position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)
{
	global.selected = 13;
}
if global.selected == 13 and wordstring != "Cannot find file.\n"
{
	if keyboard_check_pressed(vk_anykey)
	{
		wordstring += string(keyboard_string);
		keyboard_string = "";
	}
	if keyboard_check_pressed(vk_backspace)
	{
		wordstring = string_delete(wordstring, string_length(wordstring), 1);
		keyboard_string = "";
	}
	if keyboard_check_pressed(vk_enter)
	{
		if file_exists(wordstring)
		{
			instance_create_layer(0, 100, "Instances", obj_loader, {readfile : wordstring});
			wordstring = "";
			global.selected = 42;
		}
		else
		{
			wordstring = "Cannot find file.\n"
			alarm_set(0, 90)
		}
	}
}
if global.selected != 13
{
	wordstring = ""
}
if global.saving = 1
{
	visible = false;
}
else
{
	visible = true;
}