/// @description  Check if bomb should hurt

bombDistance = point_distance(x, y, o_game.currentBomb.x, o_game.currentBomb.y)
if (bombDistance <= 96) {
	health -= 2;
}

