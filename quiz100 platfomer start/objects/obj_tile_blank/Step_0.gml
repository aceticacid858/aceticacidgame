/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
tile_on=false;
visible=false;
y=900;
checktime++;
if(checktime>start_time&&checktime<start_time+life_time) {
	visible=true;
	y=ystart;
	if(place_meeting(x,y,obj_player)) {
	obj_player.y=y-32;
	}
	if(checktime<start_time+10) {
		image_alpha=0.1*(checktime-start_time)
	} else if (checktime>start_time+life_time-10) {
		image_alpha=0.1*(start_time+life_time-checktime)
	}
	
} else {
	visible=false;
	y=900;
	image_alpha=1;
}
if(checktime>=period) {
	checktime=0;
}