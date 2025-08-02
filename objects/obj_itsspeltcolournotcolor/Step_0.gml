if position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)
{
	global.selected = 2;
	numberask = 1;
}
if global.selected == 2 and numstring != "Number too high. Please try again." {
	if keyboard_check_pressed(vk_anykey) and string(keyboard_string) = 1 or string(keyboard_string) = 2 or string(keyboard_string) = 3 or string(keyboard_string) = 4 or string(keyboard_string) = 5 or string(keyboard_string) = 6 or string(keyboard_string) = 7 or string(keyboard_string) = 8 or string(keyboard_string) = 9 or string(keyboard_string) = 0
	{
		numstring += string(keyboard_string);
		keyboard_string = "";
	}
	if keyboard_check_pressed(vk_backspace)
	{
		numstring = string_delete(numstring, string_length(numstring), 1);
		keyboard_string = "";
	}
	if keyboard_check_pressed(vk_enter) and numstring != ""
	{
		if real(numstring) > 255
		{
			numstring = "Number too high. Please try again."
			alarm_set(0, 90);
		}
		else
		{
			if numberask == 3
			{
				global.beans = real(numstring);
				global.selected = 0;
				numberask = 0;
				numstring = "";
			}
			if numberask == 2
			{
				global.green = real(numstring);
				numberask = 3;
				numstring = "";
			}
			if numberask == 1
			{
				global.red = real(numstring);
				numberask = 2;
				numstring = "";
			}
		}
	}
}
if global.selected != 2
{
	numberask = 0;
}
if global.saving = 1
{
	visible = false;
}
else
{
	visible = true;
}