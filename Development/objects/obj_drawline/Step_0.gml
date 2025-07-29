if mouse_check_button_released(mb_left) and (global.selected == 1 or global.selected == 6)
{
	steps += 1;
}
if keyboard_check(vk_control) and keyboard_check(ord("Z")) and chill == 0
{
	if steps < 1
	{
		instance_destroy();
	}
	steps -= 1;
	chill = 1;
}
else
{
	instance_create_layer(x, y, "Instances", obj_draw, {active : 0, image_blend : image_blend, image_xscale : image_xscale, image_yscale : image_yscale, image_angle : image_angle, steps : steps})
	if distance_to_point(real(xtarget), real(ytarget)) < 1
	{
		repeat obj_paint.xscale * 8
		{
			move_towards_point(real(xtarget), real(ytarget), 1);
			instance_create_layer(x, y, "Instances", obj_draw, {active : 0, image_blend : image_blend, image_xscale : image_xscale, image_yscale : image_yscale, image_angle : image_angle, steps : steps})
		}
		instance_destroy();
	}
}
if !(keyboard_check(vk_control) and keyboard_check(ord("Z")))
{
	chill = 0;
}