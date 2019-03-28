/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5AFD9D4E
/// @DnDArgument : "var" "invicible"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "1"
if(!(invicible == 1))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4A2A63DE
	/// @DnDInput : 2
	/// @DnDParent : 5AFD9D4E
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "1"
	/// @DnDArgument : "var" "player_lives"
	/// @DnDArgument : "var_1" "invicible"
	player_lives += -1;
	invicible = 1;

	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 227D7AA1
	/// @DnDParent : 5AFD9D4E
	/// @DnDArgument : "alpha" "0.5"
	image_alpha = 0.5;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 20BF5943
	/// @DnDParent : 5AFD9D4E
	alarm_set(0, 30);
}