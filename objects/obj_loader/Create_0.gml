instance_destroy(obj_draw);
instance_destroy(obj_loaddraw);
ini_open(game_save_id + readfile);
contents = ini_read_string("mif", "main", "!MIF![1600](700)");
ini_close();
length = "";
str = "";
spr_importedfile = spr_fallback;
sqrstart = string_pos("[", contents);
sqrend = string_pos("]", contents);
curstart = string_pos("(", contents);
curend = string_pos(")", contents);
target = sqrstart + 1;
reseted = 1;
r = 0;
g = 0;
b = 0;
line = 0;
do {
	length += string_char_at(contents, target);
	target ++;
}
until(target == sqrend)
length = real(length);
_x = length;
xx = _x;
length = "";
target = curstart + 1;
do {
	length += string_char_at(contents, target);
	target ++;
}
until(target == curend)
length = real(length);
_y = length;
reset = 100; 