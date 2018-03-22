/// @description  Mine explosives

awake = true;
bombDistance = point_distance(x, y, o_explosive_mine.x, o_explosive_mine.y)
if (bombDistance <= 96) {
	alarm[3] = 5;
}
