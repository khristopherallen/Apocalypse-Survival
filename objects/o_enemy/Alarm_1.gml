/// @description  Player wakes up enemy

if (point_distance(x, y, o_player.x, o_player.y) < 400) {
	awake = true;
	moving = true;
}
alarm[1] = room_speed;
