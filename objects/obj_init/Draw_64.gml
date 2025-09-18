draw_set_font(fnt_mica);
draw_set_color(c_black);
draw_text(0, 900, "Milorad Image Creation Application v0.4.1");
ini_open(game_save_id + "true_config.ini");
global.path = ini_read_string("general", "path", game_save_id);
ini_close();