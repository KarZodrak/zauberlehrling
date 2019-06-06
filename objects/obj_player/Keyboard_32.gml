/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 23B1992D
/// @DnDArgument : "var" "health_chargeing"
if(health_chargeing == 0)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 2688D68D
	/// @DnDParent : 23B1992D
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_block"
	/// @DnDSaveInfo : "object" "933de5e5-ce42-420f-a6ac-8ce9be745f7c"
	var l2688D68D_0 = instance_place(x + 0, y + 1, obj_block);
	if ((l2688D68D_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7BC96488
		/// @DnDParent : 2688D68D
		/// @DnDArgument : "var" "power_air"
		/// @DnDArgument : "value" "1"
		if(power_air == 1)
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 15158493
			/// @DnDParent : 7BC96488
			/// @DnDArgument : "speed" "-jump_speed_air"
			/// @DnDArgument : "type" "2"
			vspeed = -jump_speed_air;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 624D902E
		/// @DnDParent : 2688D68D
		else
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 1A06922C
			/// @DnDParent : 624D902E
			/// @DnDArgument : "speed" "-jump_speed"
			/// @DnDArgument : "type" "2"
			vspeed = -jump_speed;
		}
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 198E9E4E
	/// @DnDParent : 23B1992D
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_block_moving"
	/// @DnDSaveInfo : "object" "15438731-f174-419a-b3c1-c4b67ee146da"
	var l198E9E4E_0 = instance_place(x + 0, y + 1, obj_block_moving);
	if ((l198E9E4E_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6D7F3579
		/// @DnDParent : 198E9E4E
		/// @DnDArgument : "var" "power_air"
		/// @DnDArgument : "value" "1"
		if(power_air == 1)
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 19969441
			/// @DnDParent : 6D7F3579
			/// @DnDArgument : "speed" "-jump_speed_air"
			/// @DnDArgument : "type" "2"
			vspeed = -jump_speed_air;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 5FDA4E48
		/// @DnDParent : 198E9E4E
		else
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 7833771E
			/// @DnDParent : 5FDA4E48
			/// @DnDArgument : "speed" "-jump_speed"
			/// @DnDArgument : "type" "2"
			vspeed = -jump_speed;
		}
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 225DDBF9
	/// @DnDParent : 23B1992D
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_earthblock"
	/// @DnDSaveInfo : "object" "d929d7c0-a6ab-4f0d-8147-b3a9272ee9f8"
	var l225DDBF9_0 = instance_place(x + 0, y + 1, obj_earthblock);
	if ((l225DDBF9_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 74BD0265
		/// @DnDParent : 225DDBF9
		/// @DnDArgument : "var" "power_air"
		/// @DnDArgument : "value" "1"
		if(power_air == 1)
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 554317C0
			/// @DnDParent : 74BD0265
			/// @DnDArgument : "speed" "-jump_speed_air"
			/// @DnDArgument : "type" "2"
			vspeed = -jump_speed_air;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 44AF8A1F
		/// @DnDParent : 225DDBF9
		else
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 59D6AD1F
			/// @DnDParent : 44AF8A1F
			/// @DnDArgument : "speed" "-jump_speed"
			/// @DnDArgument : "type" "2"
			vspeed = -jump_speed;
		}
	}
}