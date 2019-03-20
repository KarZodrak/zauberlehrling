/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6EC5AE58
/// @DnDInput : 2
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "-1"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "fireball_cooldown_tick"
/// @DnDArgument : "var_1" "block_cooldown_tick"
fireball_cooldown_tick += -1;
block_cooldown_tick += -1;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0B8C2763
/// @DnDArgument : "expr" "place_free(x,y+1)"
if(place_free(x,y+1))
{
	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 4E99CA7E
	/// @DnDParent : 0B8C2763
	/// @DnDArgument : "force" "player_gravity"
	gravity = player_gravity;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 41242BA3
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 510B4F5E
	/// @DnDParent : 41242BA3
	/// @DnDArgument : "force" "0"
	gravity = 0;
}