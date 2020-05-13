if (keyboard_check(vk_numpad6)) {
	image_angle += -5;
}

if (keyboard_check(vk_numpad4)) {
	image_angle += 5;
}

if (keyboard_check(vk_numpad8)) {
	motion_add(image_angle, 0.05);
}

if (keyboard_check(vk_numpad5)) {
	motion_add(image_angle, -0.05);
}

if (keyboard_check_pressed(vk_add)) {
	var bullet = instance_create_layer(x,y, "Instances", obj_bullet);
	bullet.direction = image_angle;
}

move_wrap(true, true, sprite_width/2);