/// @description
if (fireGun){
	if (!health <= 0) {
		var dir = point_direction(x, y, mouse_x, mouse_y);
		var bullet = instance_create_layer(x+lengthdir_x(bulletX,image_angle) - lengthdir_y(bulletY,image_angle), y+lengthdir_y(bulletX,image_angle) + lengthdir_x(bulletY,image_angle), "Bullets", o_bullet);
		bullet.direction = dir;
		bullet.image_angle = dir-90;
	}
	fireGun = false;
	alarm[1] = shootSpeed;
}
