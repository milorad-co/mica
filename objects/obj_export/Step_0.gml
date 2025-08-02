if position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left) {
	global.selected = 4;
}
if global.selected == 4 and wordstring != "That file already exists.\n" and wordstring != "GUMP only supports saving .png, .jpg, and .jpeg file formats.\n" {
	if keyboard_check_pressed(vk_anykey) {
		wordstring += string(keyboard_string);
		keyboard_string = "";
	}
	if keyboard_check_pressed(vk_backspace) {
		wordstring = string_delete(wordstring, string_length(wordstring), 1);
		keyboard_string = "";
	}
	if keyboard_check_pressed(vk_enter) {
		if file_exists(wordstring) {
			wordstring = "That file already exists.\n"
			alarm_set(0, 90);
		}
		else {
			global.saving = 1;
			visible = false;
			alarm_set(1, 1);
		}
	}
}
if global.selected != 4 {
	wordstring = "";
}