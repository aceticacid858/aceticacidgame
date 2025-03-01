/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4A12FEE8
/// @DnDArgument : "var" "obj_player.y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "y+32"
if(obj_player.y < y+32){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3D1B594B
	/// @DnDParent : 4A12FEE8
	/// @DnDArgument : "var" "obj_player.y"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "y-32"
	if(obj_player.y > y-32){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 60BDB67C
		/// @DnDParent : 3D1B594B
		/// @DnDArgument : "x" "pspeed*2"
		/// @DnDArgument : "x_relative" "1"
		x += pspeed*2;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 25443C0F
	/// @DnDParent : 4A12FEE8
	else{	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 00C167F4
		/// @DnDParent : 25443C0F
		/// @DnDArgument : "x" "pspeed"
		/// @DnDArgument : "x_relative" "1"
		x += pspeed;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 13934B61
else{	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 759B9E0C
	/// @DnDParent : 13934B61
	/// @DnDArgument : "x" "pspeed"
	/// @DnDArgument : "x_relative" "1"
	x += pspeed;}