/// @description  

draw_circle_color(x, y, radius, c_orange, c_yellow, false);
draw_set_alpha((96-radius)/96);
radius += 96/10;
if (radius >= 96) {
	instance_destroy();
}
draw_set_alpha(1);