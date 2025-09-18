if draw == 1 
{
	surface_set_target(global.surf[global.target]);
	draw_set_colour(image_blend);
	draw_line_width(x - 32, y, mouse_x - 32, mouse_y, image_xscale * 14);
	draw_sprite_ext(spr_draw, 0, x - 32, y, image_xscale, image_yscale, point_direction(x - 32, y, mouse_x - 32, mouse_y), image_blend, 1);
	draw_sprite_ext(spr_draw, 0, mouse_x - 32, mouse_y, image_xscale, image_yscale, point_direction(x - 32, y, mouse_x - 32, mouse_y), image_blend, 1);
	surface_reset_target();
	instance_destroy();
}