/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1C27421B
/// @DnDArgument : "var" "power_water"
/// @DnDArgument : "value" "1"
if(power_water == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2EDA5403
	/// @DnDParent : 1C27421B
	/// @DnDArgument : "var" "heal_cooldown_tick"
	/// @DnDArgument : "op" "3"
	if(heal_cooldown_tick <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2FD8542C
		/// @DnDParent : 2EDA5403
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "health_chargeing"
		health_chargeing = 1;
	}
}