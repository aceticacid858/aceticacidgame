/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

round(x);
round(y);

/*
for(i=0;i<pspeed;i++) {
	x+=turn;
}
if(place_meeting(x+turn,y,obj_obs_tile)) {
	turn=turn*-1;
}
if(y<obj_player.y+obj_player.cwidth/2&&y>obj_player.y-obj_player.cwidth/2) {
	pspeed=10;
} else {
	pspeed=4;
}*/

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
}