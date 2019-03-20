/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0DA54F89
/// @DnDArgument : "var" "fireball_cooldown_tick"
/// @DnDArgument : "op" "3"
if(fireball_cooldown_tick <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5525B00B
	/// @DnDParent : 0DA54F89
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-64"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_fireball"
	/// @DnDSaveInfo : "objectid" "c1126ae1-7cc7-4cb3-af18-0b45564fa388"
	instance_create_layer(x + 0, y + -64, "Instances", obj_fireball);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3C912CB7
	/// @DnDParent : 0DA54F89
	/// @DnDArgument : "expr" "fireball_cooldown"
	/// @DnDArgument : "var" "fireball_cooldown_tick"
	fireball_cooldown_tick = fireball_cooldown;
}