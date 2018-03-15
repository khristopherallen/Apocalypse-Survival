/// @description  

for (i=0; i<sprite_width/tileSize; i++) {
	for(j=0; j<sprite_height/tileSize; j++) {
		draw_sprite(s_wall, 0, x+i*tileSize, y+j*tileSize);
	}
}