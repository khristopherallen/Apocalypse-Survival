/// @description  

var cell_width = 16;
var cell_height = 16;

var hcells = room_width div cell_width;
var vcells = room_height div cell_height;	

global.grid = mp_grid_create(0, 0, hcells, vcells, cell_width, cell_height);

// Add obstacles
mp_grid_add_instances(global.grid, o_obstacle_parent, false);
