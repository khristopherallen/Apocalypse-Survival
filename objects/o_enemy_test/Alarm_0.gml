/// @description
var rand = irandom_range(0,5);
if (rand == 1){
	//alarm[0] = room_speed*2;
}else{
	mx = o_player.x;//(random_range(20,room_width-20) div 16)*16+8;
	my = o_player.y;//(random_range(20,room_height-20) div 16)*16+8;
	if (mp_grid_path(global.grid, path, x, y, mx, my, true)) {
		path_start(path, speed_, path_action_stop, false);
		moving = true;
	}else{
		//alarm[0] = 1;	
	}
}
alarm[0] = room_speed*2;