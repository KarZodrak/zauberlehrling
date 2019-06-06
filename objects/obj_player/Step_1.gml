/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4ED041D9
/// @DnDArgument : "expr" """"
/// @DnDArgument : "var" "tutorialText"
tutorialText = "";

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 002991E4
/// @DnDArgument : "var" "moving_plat"
/// @DnDArgument : "value" "1"
if(moving_plat == 1)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 4785DE75
	/// @DnDParent : 002991E4
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "target" "move_plat"
	/// @DnDArgument : "object" "obj_block_moving"
	/// @DnDSaveInfo : "object" "15438731-f174-419a-b3c1-c4b67ee146da"
	var l4785DE75_0 = instance_place(x + 0, y + 1, obj_block_moving);
	move_plat = l4785DE75_0;
	if ((l4785DE75_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 771492D2
		/// @DnDInput : 2
		/// @DnDParent : 4785DE75
		/// @DnDArgument : "expr" "move_plat.direction"
		/// @DnDArgument : "expr_1" "move_plat.speed"
		/// @DnDArgument : "var" "direction"
		/// @DnDArgument : "var_1" "speed"
		direction = move_plat.direction;
		speed = move_plat.speed;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1BB849D2
	/// @DnDParent : 002991E4
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 68E016AA
		/// @DnDInput : 3
		/// @DnDParent : 1BB849D2
		/// @DnDArgument : "var" "direction"
		/// @DnDArgument : "var_1" "speed"
		/// @DnDArgument : "var_2" "moving_plat"
		direction = 0;
		speed = 0;
		moving_plat = 0;
	}
}