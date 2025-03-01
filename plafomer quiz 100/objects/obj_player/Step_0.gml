gravity_direction = 270;

if(place_free(x,y+1) == 1){	gravity = 0.3;

	jump_on = 1;}

else{	gravity = 0;

	jump_on = 0;}

if(vspeed > 10){	vspeed = 10;}

if(y > 767){	x = xstart;
	y = ystart;}