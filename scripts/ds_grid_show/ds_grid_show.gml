var grid = argument0;
j=0;
for (i = 0;i<ds_grid_height(grid);i++){
	numbers = "";
	repeat(ds_grid_width(grid)){
		numbers += string(ds_grid_get(grid,j++,i)) + "    ";
	}
	j=0;
	show_debug_message(numbers);
}