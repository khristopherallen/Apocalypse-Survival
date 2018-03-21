randomise();
var grid = ds_grid_create(8,8);
ds_grid_set_region(grid, 0, 0, 7, 7, 0);
roomNum = irandom(3);
switch(roomNum){
	case 0:
		ds_grid_add_region(grid, 0, 0, 4, 0, 1);
		ds_grid_add_region(grid, 0, 1, 0, 3, 1);
		ds_grid_add_region(grid, 3, 3, 6, 3, 1);
		ds_grid_add(grid, 4, 4, 1);
		ds_grid_add_region(grid, 7, 6, 7, 7, 1);
		ds_grid_add_region(grid, 0, 7, 2, 7, 1);
		break;
	case 1:
		ds_grid_add_region(grid, 0, 0, 5, 0, 1);
		ds_grid_add_region(grid, 0, 1, 0, 2, 1);
		ds_grid_add(grid, 7, 1, 1);
		ds_grid_add_region(grid, 5, 3, 5, 5, 1);
		ds_grid_add_region(grid, 0, 5, 1, 5, 1);
		ds_grid_add(grid, 4, 5, 1);
		ds_grid_add(grid, 0, 7, 1);
		ds_grid_add_region(grid, 5, 7, 7, 7, 1);
		break;
	case 2:
		ds_grid_add_region(grid, 1, 0, 4, 0, 1);
		ds_grid_add_region(grid, 6, 1, 6, 2, 1);
		ds_grid_add_region(grid, 0, 2, 0, 3, 1);
		ds_grid_add_region(grid, 1, 5, 1, 7, 1);
		ds_grid_add_region(grid, 4, 7, 6, 7, 1);
		break;
	case 3:
		ds_grid_add_region(grid, 0, 0, 0, 1, 1);
		ds_grid_add_region(grid, 5, 0, 7, 0, 1);
		ds_grid_add_region(grid, 7, 1, 7, 3, 1);
		ds_grid_add_region(grid, 2, 4, 3, 4, 1);
		ds_grid_add_region(grid, 0, 6, 0, 7, 1);
		ds_grid_add_region(grid, 2, 6, 4, 6, 1);
		ds_grid_add_region(grid, 6, 6, 6, 7, 1);
		break;
}

ds_grid_rotate(grid,irandom(1),irandom_range(0,3));

return grid;