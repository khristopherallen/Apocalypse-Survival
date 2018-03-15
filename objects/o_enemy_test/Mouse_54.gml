/// @description  Create path and move

mx = (mouse_x div 32)*32+16;
my = (mouse_y div 32)*32+16;

if (mp_grid_path(global.grid, path, x, y, mx, my, true)) {
	path_start(path, 2, path_action_stop, false);
}
