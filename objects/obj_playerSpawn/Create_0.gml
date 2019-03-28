/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 4B89F58F
/// @DnDArgument : "obj" "obj_player"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "fbd9f629-8aa9-4f5b-ae6d-7763865c61e4"
var l4B89F58F_0 = false;
l4B89F58F_0 = instance_exists(obj_player);
if(!l4B89F58F_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 013B0842
	/// @DnDParent : 4B89F58F
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_player"
	/// @DnDSaveInfo : "objectid" "fbd9f629-8aa9-4f5b-ae6d-7763865c61e4"
	instance_create_layer(x + 0, y + 0, "Instances", obj_player);
}