chill = 0;
if active == 1 {
	steps = -10000;
	if global.lastdrawnx != -1 and global.lastdrawny != -1 {
		lastdrawnx = global.lastdrawnx;
		lastdrawny = global.lastdrawny;
	}
	else {
		lastdrawnx = x;
		lastdrawny = y;
	}
	global.lastdrawnx = x;
	global.lastdrawny = y;
	image_angle = point_direction(x, y, lastdrawnx, lastdrawny);
	instance_create_layer(x, y, "Instances", obj_drawline, {image_angle : image_angle, image_blend : image_blend, xtarget : lastdrawnx, ytarget : lastdrawny, image_xscale : image_xscale, image_yscale : image_yscale, steps : steps});
}