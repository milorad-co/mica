if position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)
{
	global.selected = 12;
}
if global.selected == 12 and wordstring != "That key already exists.\n"
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
		ini_open("st.ini");
		if ini_key_exists("files", wordstring)
		{
			wordstring = "That key already exists.\n"
			
		}
		else
		{
			instance_create_layer(0, 0, "Instances", obj_saver_UNUSEDST, {writefile : wordstring});
		}		
	}
}
if global.selected != 12
{
	wordstring = "";
}