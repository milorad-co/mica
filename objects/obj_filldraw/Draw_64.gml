if surface_getpixel(global.surf[global.target], x - 32, y) == colourtarget or position_meeting(x, y, obj_filldraw)
{
	instance_destroy();
}
surface_set_target(global.surf[global.target]);
draw_sprite_ext(spr_mifdraw, 0, x - 32, y, 1, 1, 0, image_blend, 1);
instance_create_layer(x ++, y, "Instances", obj_filldraw, {image_blend: make_colour_rgb(global.red, global.green, global.beans), colourtarget: colourtarget});
instance_create_layer(x --, y, "Instances", obj_filldraw, {image_blend: make_colour_rgb(global.red, global.green, global.beans), colourtarget: colourtarget});
instance_create_layer(x, y ++, "Instances", obj_filldraw, {image_blend: make_colour_rgb(global.red, global.green, global.beans), colourtarget: colourtarget});
instance_create_layer(x, y --, "Instances", obj_filldraw, {image_blend: make_colour_rgb(global.red, global.green, global.beans), colourtarget: colourtarget});
surface_reset_target();
instance_destroy();