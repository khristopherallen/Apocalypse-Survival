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
					instance_create_layer(rw*roomSize+i*gridSize+borderSize, rh*roomSize+j*gridSize+borderSize, "walls", o_obstacle_parent)
				}else{
					var spawnZombie = irandom(20);
					if (spawnZombie == 1){
						instance_create_layer(rw*roomSize+i*gridSize+gridSize/2+borderSize,rh*roomSize+j*gridSize+gridSize/2+borderSize, "Monsters", o_enemy);
					}
					if (!instance_exists(o_player)){
						instance_create_layer(i*gridSize+gridSize/2+borderSize,j*gridSize+gridSize/2+borderSize, "Instances", o_player);
					}
				}
			}
		}
	}
}
o_pathfinding.alarm[0] = 1;