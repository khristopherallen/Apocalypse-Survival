/// @description  

if (!dead) {
	y += 1;
	//path_start(p_door1, 1, path_action_continue, true);
}


if (dead) {
	image_alpha-=0.05;
	if (image_alpha <= 0) {
		instance_destroy();
	}
}

if (y >= room_height+sprite_height/2 && !dead) {
	dead = true;
	health --;
}

