/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 7AD004E6
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "fbd9f629-8aa9-4f5b-ae6d-7763865c61e4"
var l7AD004E6_0 = false;
l7AD004E6_0 = instance_exists(obj_player);
if(l7AD004E6_0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 57302EE8
	/// @DnDApplyTo : fbd9f629-8aa9-4f5b-ae6d-7763865c61e4
	/// @DnDParent : 7AD004E6
	/// @DnDArgument : "x" "obj_playerSpawn.x"
	/// @DnDArgument : "y" "obj_playerSpawn.y"
	with(obj_player) {
	x = obj_playerSpawn.x;
	y = obj_playerSpawn.y;
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1F014A62
	/// @DnDParent : 7AD004E6
	instance_destroy();
}