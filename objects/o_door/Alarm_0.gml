/// @description  

if (!place_meeting(spawnX, spawnY, o_enemy_test)) {
	instance_create_layer(spawnX, spawnY, "Monsters", o_enemy_test);
}

alarm[0] = irandom_range(room_speed, room_speed*4);
