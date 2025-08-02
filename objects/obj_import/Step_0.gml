if position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left) {
	global.selected = 3;
}
if global.selected == 3 and wordstring != "Cannot find file.\n" {
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
			instance_destroy(obj_draw);
			spr_importedfile = sprite_add(wordstring, 1, false, false, 0, 0);
			obj_importedfile.sprite_index = spr_importedfile;
			obj_importedfile.image_yscale = 800 / obj_importedfile.sprite_height;
			obj_importedfile.image_xscale = 1600 / obj_importedfile.sprite_width;
			wordstring = "";
			global.selected = 0;
		}
		else {
			wordstring = "Cannot find file.\n"
			alarm_set(0, 90)
		}
	}
}
if global.selected != 3 {
	wordstring = ""
}
if global.saving = 1 {
	visible = false;
}
else {
	visible = true;
}