/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1B684B0F
/// @DnDArgument : "var" "power_earth"
/// @DnDArgument : "value" "1"
if(power_earth == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 17A7702B
	/// @DnDParent : 1B684B0F
	/// @DnDArgument : "var" "health_chargeing"
	if(health_chargeing == 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0DA54F89
		/// @DnDParent : 17A7702B
		/// @DnDArgument : "var" "block_cooldown_tick"
		/// @DnDArgument : "op" "3"
		if(block_cooldown_tick <= 0)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 4E14B231
			/// @DnDParent : 0DA54F89
			/// @DnDArgument : "expr" "place_empty(mouse_x,mouse_y)"
			if(place_empty(mouse_x,mouse_y))
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 5525B00B
				/// @DnDParent : 4E14B231
				/// @DnDArgument : "xpos" "mouse_x"
				/// @DnDArgument : "ypos" "mouse_y"
				/// @DnDArgument : "objectid" "obj_earthblock"
				/// @DnDSaveInfo : "objectid" "d929d7c0-a6ab-4f0d-8147-b3a9272ee9f8"
				instance_create_layer(mouse_x, mouse_y, "Instances", obj_earthblock);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3C912CB7
				/// @DnDParent : 4E14B231
				/// @DnDArgument : "expr" "block_cooldown"
				/// @DnDArgument : "var" "block_cooldown_tick"
				block_cooldown_tick = block_cooldown;
			}
		}
	}
}