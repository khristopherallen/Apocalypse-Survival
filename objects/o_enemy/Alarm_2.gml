/// @description  Explosives

awake = true;
bombDistance = point_distance(x, y, o_game.currentBomb.x, o_game.currentBomb.y);
if (bombDistance <= 96) {
	alarm[3] = 5;
}
