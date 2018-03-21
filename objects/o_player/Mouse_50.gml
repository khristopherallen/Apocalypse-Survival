/// @description
if (fireGun){
	if (!health <= 0) {
		var cx = o_player_skin.x;
		var cy = o_player_skin.y;
		var ci = o_player_skin.image_angle;
		var dir = point_direction(cx, cy, mouse_x, mouse_y);
		var bullet = instance_create_layer(cx+lengthdir_x(bulletX,ci) - lengthdir_y(bulletY,ci), cy+lengthdir_y(bulletX,ci) + lengthdir_x(bulletY,ci), "Bullets", o_bullet);
		bullet.direction = dir;
		bullet.image_angle = dir-90;
	}
	fireGun = false;
	alarm[1] = shootSpeed;
}
