surface_set_target(tmp);
draw_sprite_ext(spr_draw, 0, x - 32, y, image_xscale, image_yscale, 0, image_blend, 1);
surface_reset_target();
if distance_to_point(xtarget, ytarget) < 1 or step > global.target
{
	surface_set_target(global.surf[global.target]);
	draw_surface(tmp, 0, 0);
	surface_reset_target();
	instance_destroy();
}