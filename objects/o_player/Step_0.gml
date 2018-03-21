/// @description  
if (health > 0) {
	
	//////// MOVEMENT CODE ////////

	// UPDATE INPUT
	input_left		= keyboard_check(ord("A"));
	input_right		= keyboard_check(ord("D"));
	input_up		= keyboard_check(ord("W"));
	input_down		= keyboard_check(ord("S"));
	input_walk		= keyboard_check(vk_shift);
	input_run		= keyboard_check(vk_control);

	// Collision x and y
	var cx = o_player_skin.x;
	var cy = o_player_skin.y;

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
		if (place_meeting(cx+moveX, cy, o_obstacle_parent)) {
			repeat (abs(moveX)) {
				if (!place_meeting(cx+sign(moveX), cy, o_obstacle_parent)) { cx += sign(moveX);}
				else { break; }
			}
			moveX = 0;
		}
	}

	// Vertical
	if (moveY != 0) {
		if (place_meeting(cx, cy+moveY, o_obstacle_parent)) {
			repeat (abs(moveY)) {
				if (!place_meeting(cx, cy+sign(moveY), o_obstacle_parent)) { cy += sign(moveY);}
				else { break; }
			}
			moveY = 0;
		}
	}

	// APPLY MOVEMENT
	x += moveX;
	y += moveY;
}