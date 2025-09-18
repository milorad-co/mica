if global.path = game_save_id
{
	selected = 0;
}
else if global.path = working_directory
{
	selected = 1;
}
else if global.path = program_directory
{
	selected = 2;
}
else
{
	selected = 3;
}