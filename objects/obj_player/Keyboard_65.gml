/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 19C22B66
/// @DnDArgument : "var" "health_chargeing"
if(health_chargeing == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 716E60DD
	/// @DnDParent : 19C22B66
	/// @DnDArgument : "expr" "place_free(x-movement_speed,y)"
	if(place_free(x-movement_speed,y))
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 7360D1C6
		/// @DnDParent : 716E60DD
		/// @DnDArgument : "x" "-movement_speed"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "0"
		/// @DnDArgument : "y_relative" "1"
		x += -movement_speed;
		y += 0;
	}
}