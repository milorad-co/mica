global.target = 0;
global.surf = [surface_create(1600, 800)];
ini_open(game_save_id + fname);
contents = ini_read_string("mif", "main", "!MIF![1600](800)");
ini_close();
length = "";
str = "";
spr_importedfile = spr_fallback;
sqrstart = string_pos("[", contents);
sqrend = string_pos("]", contents);
curstart = string_pos("(", contents);
curend = string_pos(")", contents);
target = sqrstart + 1;
r = 0;
g = 0;
b = 0;
line = 0;
do
{
	length += string_char_at(contents, target);
	target ++;
}
until(target == sqrend)
length = real(length);
_x = length;
xx = _x;
length = "";
target = curstart + 1;
do 
{
	length += string_char_at(contents, target);
	target ++;
}
until(target == curend)
length = real(length);
_y = length;
reset = 100; 
colour = 0;
draw = surface_create(1600, 900);
stop = 0;