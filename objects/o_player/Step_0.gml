/// @description  
if (health > 0) {
	if (moveX == 0){
		if (moveRight ) {
			moveX = 0;
			movement = 8;	
		}else if (moveLeft){
			moveX = 0;
			movement = -8;
		}
	}
	
	if (moveRight || moveLeft){
		moveX++;
		x+=movement;
		x = clamp(x, 128, 384);
		if (moveX == 16) {
			moveRight = false;
			moveLeft = false;
			moveX = 0;
		}
	}
	
	image_angle = point_direction(x, y, mouse_x, mouse_y);
}
//////// MOVEMENT CODE ////////

// UPDATE INPUT
input_left		= keyboard_check(ord("A"));
input_right		= keyboard_check(ord("D"));
input_up		= keyboard_check(ord("W"));
input_down		= keyboard_check(ord("S"));
input_walk		= keyboard_check(vk_shift);
input_run		= keyboard_check(vk_control);

// ALTER SPEED
if (input_walk or input_run) {
	spd = abs((input_walk * w_spd) - (input_run * r_spd));
} else {
	spd = n_spd;
}

// RESET MOVE VARIABLES
moveX = 0;
moveY = 0;

//	INTENDED MOVEMENT
moveX = (input_right - input_left) * spd;
moveY = (input_down - input_up) * spd;


// COLLISION CHECKS - SOLIDS
// Horizontal
if (moveX != 0) {
	if (place_meeting(x+moveX, y, o_obstacle_parent)) {
		repeat (abs(moveX)) {
			if (!place_meeting(x+sign(moveX), y, o_obstacle_parent)) { x += sign(moveX);}
			else { break; }
		}
		moveX = 0;
	}
}

// Vertical
if (moveY != 0) {
	if (place_meeting(x, y+moveY, o_obstacle_parent)) {
		repeat (abs(moveY)) {
			if (!place_meeting(x, y+sign(moveY), o_obstacle_parent)) { y += sign(moveY);}
			else { break; }
		}
		moveY = 0;
	}
}

// APPLY MOVEMENT
x += moveX;
y += moveY;


