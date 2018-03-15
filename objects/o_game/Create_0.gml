/// @description  

monsterHit = false;
playerHit = false;
health = 5;

alarm[0] = room_speed*5;

randomise();

draw_set_halign(fa_center);

audio_master_gain(0.5);

draw_set_font(f_pixel);

// set mouse cursor
cursor_sprite = s_cursor;
window_set_cursor(cr_none);