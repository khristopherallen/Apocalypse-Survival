/// @description  

if (!place_meeting(x, y, o_enemy_test)) {
	instance_create_layer(x, y, "Monsters", o_enemy_test);
}

alarm[0] = irandom_range(room_speed, room_speed*4);
