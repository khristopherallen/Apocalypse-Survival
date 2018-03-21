/// @description  
if (awake) {
	if (moving && mx == x && my == y){
		moving = false;
		alarm[0] = random_range(1,room_speed);	
	}
}

image_angle = direction;
