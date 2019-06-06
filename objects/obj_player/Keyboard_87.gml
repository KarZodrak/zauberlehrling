/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 64E9F686
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_waterfall"
/// @DnDSaveInfo : "object" "afd1fb4f-2c1a-4a8d-8ab4-f3b168e0c587"
var l64E9F686_0 = instance_place(x + 0, y + 0, obj_waterfall);
if ((l64E9F686_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 19C22B66
	/// @DnDParent : 64E9F686
	/// @DnDArgument : "var" "health_chargeing"
	if(health_chargeing == 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 716E60DD
		/// @DnDParent : 19C22B66
		/// @DnDArgument : "expr" "place_free(x,y-movement_speed)"
		if(place_free(x,y-movement_speed))
		{
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 7360D1C6
			/// @DnDParent : 716E60DD
			/// @DnDArgument : "x" "0"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "-movement_speed"
			/// @DnDArgument : "y_relative" "1"
			x += 0;
			y += -movement_speed;
		}
	}
}