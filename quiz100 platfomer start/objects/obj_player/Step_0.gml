/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
x=round(x);
y=round(y);
if(heightspeed>0) {
	for(i=0;i<heightspeed;i++) {
		if(!place_meeting(x,y-1,obj_tile)){
			y -= 1;
		} else {
			break;
		}
	}
	if(!place_meeting(x,y-1,obj_tile)) {
		heightspeed -= gravity_velo;
	} else if(heightspeed > gravity_velo) {
		heightspeed = 0;
	} else {
		heightspeed -= gravity_velo;
	}
} else if(heightspeed<=0) {
	for(i=0;i<-heightspeed;i++) {
		if(!place_meeting(x,y+1,obj_tile)){
			y += 1;
		} else {
			break;
		}
	}
	if(!place_meeting(x,y+1,obj_tile)) {
		heightspeed -= gravity_velo;
	} else {
		jumping=true
		sprite_index=spr_player;
	}
}
show_debug_message(heightspeed) ;
if(y>767) {
	x=xstart;
	y=ystart;
}

if(place_meeting(x,y+1,obj_tile_moving)) {
	if(obj_tile_moving.moving_direction==0) {
		x+=obj_tile_moving.turn;
	} else if(obj_tile_moving.moving_direction==1) {
	y+=obj_tile_moving.turn;
	}
}
if(place_meeting(x,y,obj_obs)&&!debug) {
	x=xstart;
	y=ystart;	
}