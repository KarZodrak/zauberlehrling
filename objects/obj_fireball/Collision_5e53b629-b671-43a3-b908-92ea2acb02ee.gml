/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 7382DED5
/// @DnDArgument : "times" "10"
repeat(10)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4B9C7008
	/// @DnDParent : 7382DED5
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_fireball_splat"
	/// @DnDSaveInfo : "objectid" "4f40e84c-d75d-4967-b26b-e767703306e2"
	instance_create_layer(x + 0, y + 0, "Instances", obj_fireball_splat);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7BB89400
instance_destroy();