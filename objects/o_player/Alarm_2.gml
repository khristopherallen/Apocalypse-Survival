/// @description  

bombDistance = point_distance(x, y, o_explosive_mine.x, o_explosive_mine.y)
if (bombDistance <= 96) {
	health -= 2;
}

