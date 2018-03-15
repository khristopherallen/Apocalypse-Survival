/// @description  
if (!dead) {
	o_game.monsterHit = true;
	score ++;
	o_game.alarm[0] = room_speed;
	dead = true;
}
instance_destroy(other);