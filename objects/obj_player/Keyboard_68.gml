/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0E49DA3E
/// @DnDArgument : "var" "health_chargeing"
if(health_chargeing == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1FFE6595
	/// @DnDParent : 0E49DA3E
	/// @DnDArgument : "expr" "place_free(x+movement_speed,y)"
	if(place_free(x+movement_speed,y))
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 4EE9DA05
		/// @DnDParent : 1FFE6595
		/// @DnDArgument : "x" "movement_speed"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "0"
		/// @DnDArgument : "y_relative" "1"
		x += movement_speed;
		y += 0;
	}
}