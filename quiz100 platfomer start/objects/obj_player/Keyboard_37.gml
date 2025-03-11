/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
x=round(x);
y=round(y);
for(i = 0; i<pspeed; i++){
	if(!place_meeting(x-1,y,obj_tile)){
		x -= 1;
	} else {
		break;
	}
}
image_xscale=-1;