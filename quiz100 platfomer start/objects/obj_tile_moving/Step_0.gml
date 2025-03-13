/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

/*if(place_meeting(x,y,obj_moving_change)&&moving_index==obj_moving_change.moving_index) {
	moving_direction = obj_moving_change.moving_direction;
	moving_range = obj_moving_change.moving_range;
}*/
if(moving&&moving_range>0) {
	if(moving_direction==0) {
		for(i=0;i<pspeed;i++) {
			x+=turn;
			tile_directionx=turn;
		}
		if(x-xstart>moving_range||x==xstart) {
			turn=-turn;
		}
	} else if(moving_direction==1) {
		for(i=0;i<pspeed;i++) {
			x-=turn;
			tile_directionx=turn;
		}
		if(xstart-x>moving_range||x==xstart) {
			turn=-turn;
		}
	} else if(moving_direction==2) {
		for(i=0;i<pspeed;i++) {
			y+=turn;
			tile_directiony=turn;
		}
		if(y==ystart||y-ystart>moving_range) {
			turn=-turn;
		}
	} else if(moving_direction==3) {
		for(i=0;i<pspeed;i++) {
			y-=turn;
			tile_directiony=turn;
		}
		if(ystart-y>moving_range||y==ystart) {
			turn=-turn;
		}
	}
}
	/*
for(i=0;i<pspeed;i++) {
	x+=turn;
}
if(turn>0&&x-xstart>movewidth) {
	turn=-turn
}
if(turn<0&&x<=xstart) {
	turn=-turn
}
if(y<obj_player.y+obj_player.cwidth/2&&y>obj_player.y-obj_player.cwidth/2) {
	pspeed=10;
} else {
	pspeed=4;
}*/