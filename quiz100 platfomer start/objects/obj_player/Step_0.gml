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
	if(obj_flag_restart.restart) {
		room_restart()
	} else {
		x=xstart;
		y=ystart;
	}
}
//안되는 경우 직접 가져오지말고 인스턴스로 접근할
var _tile_col = instance_place(x,y+1, obj_tile_moving);
if(instance_exists(_tile_col)&&_tile_col.moving) {
	if(_tile_col.moving_direction==0) {
		for(i=0;i<_tile_col.pspeed;i++) {
			x+=_tile_col.turn;
		}
	} else if(_tile_col.moving_direction==1) {
		for(i=0;i<_tile_col.pspeed;i++) {
			x-=_tile_col.turn;
		}
	} else if(_tile_col.moving_direction==2) {
		for(i=0;i<_tile_col.pspeed;i++) {
			y+=_tile_col.turn;
		}
	} else if(_tile_col.moving_direction==3) {
		for(i=0;i<_tile_col.pspeed;i++) {
			y-=_tile_col.turn;
		}
	}
}
if(place_meeting(x,y,obj_obs)&&!debug) {
	if(obj_flag_restart.restart) {
		room_restart()
	} else {
		x=xstart;
		y=ystart;
	}
}