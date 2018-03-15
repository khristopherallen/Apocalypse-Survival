/// @description  

// Score
draw_text(room_width/2, 8, "Score: " + string(score));
for (i=0; i<health; i++) {
	draw_sprite(s_heart, 0, i*20+10, 10);
}

// Monster killed
if (monsterHit) {
	draw_set_color(c_green);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_color(c_white);
	monsterHit = false;
	audio_play_sound(a_hurt, 10, false);
}

// Player damage flash
if (playerHit) {
	draw_set_color(c_red);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_color(c_white);
	playerHit = false;
	audio_play_sound(a_hurt, 10, false);
}

// Game over
if (health <= 0) {
	draw_text(room_width/2, room_height/2, "GAME OVER");
	draw_text(room_width/2, room_height/2+30, "Press Q to restart");
}
