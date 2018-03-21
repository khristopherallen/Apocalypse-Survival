/// @description Destroy/Create rooms
var elements = layer_get_all_elements("walls");
for (i = 0; i < array_length_1d(elements); i++)
{
    var inst = layer_instance_get_instance(elements[i]);
    instance_destroy(inst);
}

for (rw = 0; rw<roomW;rw++){
	for (rh=0; rh<roomH; rh++){
		grid = room_generate();
		for (i = 0;i<ds_grid_width(grid);i++){
			for (j = 0;j<ds_grid_height(grid);j++){
				if (grid[# i, j] == 1){
					instance_create_layer(rw*roomSize+i*gridSize, rh*roomSize+j*gridSize, "walls", o_obstacle_parent)
				}else{
					if (!instance_exists(o_player)){
						instance_create_layer(i*gridSize+gridSize/2,j*gridSize+gridSize/2, "Instances", o_player);
					}
				}
			}
		}
		var placed = false;
		do {
			var randomX = irandom(7);
			var randomY = irandom(7);
			if (grid[# randomX, randomY] == 0){
				instance_create_layer(rw*roomSize+randomX*gridSize+gridSize/2,rh*roomSize+randomY*gridSize+gridSize/2, "Monsters", o_door);
				placed = true;
			}
		} until (placed)
	}
}
o_pathfinding.alarm[0] = 1;