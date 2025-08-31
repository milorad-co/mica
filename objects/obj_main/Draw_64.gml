draw_set_colour(c_ltgrey);
draw_rectangle(x, y, x + string_width("Brush Size: " + string(obj_paint.xscale * 8)), 916, false);
draw_set_colour(c_black);
draw_text(x, y, "Brush Size: " + string(obj_paint.xscale * 8));
draw_surface(global.surf[global.target], 32, 0);