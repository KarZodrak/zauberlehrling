/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 2688D68D
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_block"
/// @DnDSaveInfo : "object" "933de5e5-ce42-420f-a6ac-8ce9be745f7c"
var l2688D68D_0 = instance_place(x + 0, y + 1, obj_block);
if ((l2688D68D_0 > 0))
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 1A06922C
	/// @DnDParent : 2688D68D
	/// @DnDArgument : "speed" "-jump_speed"
	/// @DnDArgument : "type" "2"
	vspeed = -jump_speed;
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 225DDBF9
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_earthblock"
/// @DnDSaveInfo : "object" "d929d7c0-a6ab-4f0d-8147-b3a9272ee9f8"
var l225DDBF9_0 = instance_place(x + 0, y + 1, obj_earthblock);
if ((l225DDBF9_0 > 0))
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0B0D77A6
	/// @DnDParent : 225DDBF9
	/// @DnDArgument : "speed" "-jump_speed"
	/// @DnDArgument : "type" "2"
	vspeed = -jump_speed;
}