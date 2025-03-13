/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
var _tile_moving_flag = instance_place(x,y, obj_tile_moving);
if(instance_exists(_tile_moving_flag)) {
	if(moving_index==_tile_moving_flag.moving_index)
	{
		_tile_moving_flag.moving_direction=moving_direction;
		_tile_moving_flag.moving_range=moving_range;
	}
}