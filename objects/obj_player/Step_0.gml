/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6EC5AE58
/// @DnDInput : 3
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "-1"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "expr_2" "-1"
/// @DnDArgument : "expr_relative_2" "1"
/// @DnDArgument : "var" "fireball_cooldown_tick"
/// @DnDArgument : "var_1" "block_cooldown_tick"
/// @DnDArgument : "var_2" "heal_cooldown_tick"
fireball_cooldown_tick += -1;
block_cooldown_tick += -1;
heal_cooldown_tick += -1;

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

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7C92B857
/// @DnDArgument : "var" "gliding"
/// @DnDArgument : "value" "1"
if(gliding == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3F427ECE
	/// @DnDParent : 7C92B857
	/// @DnDArgument : "expr" "direction == 270"
	if(direction == 270)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 4B99E1B1
		/// @DnDParent : 3F427ECE
		/// @DnDArgument : "speed" "glide_speed"
		speed = glide_speed;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 60E5883F
/// @DnDArgument : "var" "player_lives"
/// @DnDArgument : "op" "3"
if(player_lives <= 0)
{
	/// @DnDAction : YoYo Games.Game.Restart_Game
	/// @DnDVersion : 1
	/// @DnDHash : 05D06D2E
	/// @DnDParent : 60E5883F
	game_restart();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2CFBE0F8
/// @DnDArgument : "var" "health_chargeing"
/// @DnDArgument : "value" "1"
if(health_chargeing == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 65D8A612
	/// @DnDParent : 2CFBE0F8
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "heal_charge_tick"
	heal_charge_tick += 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1F8AF3C0
	/// @DnDParent : 2CFBE0F8
	/// @DnDArgument : "var" "heal_charge_tick"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "heal_charge_time*60"
	if(heal_charge_tick > heal_charge_time*60)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7519559F
		/// @DnDParent : 1F8AF3C0
		/// @DnDArgument : "var" "player_lives"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "max_lives"
		if(player_lives < max_lives)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3BA46BFF
			/// @DnDParent : 7519559F
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "player_lives"
			player_lives += 1;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 625B88F1
		/// @DnDParent : 1F8AF3C0
		/// @DnDArgument : "var" "health_chargeing"
		health_chargeing = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4909EAD4
		/// @DnDParent : 1F8AF3C0
		/// @DnDArgument : "var" "heal_charge_tick"
		heal_charge_tick = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 234A8513
		/// @DnDParent : 1F8AF3C0
		/// @DnDArgument : "expr" "heal_cooldown"
		/// @DnDArgument : "var" "heal_cooldown_tick"
		heal_cooldown_tick = heal_cooldown;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6869D555
/// @DnDArgument : "var" "player_mana"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "max_mana"
if(player_mana < max_mana)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2493BD9C
	/// @DnDParent : 6869D555
	/// @DnDArgument : "expr" "mana_regen"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "player_mana"
	player_mana += mana_regen;
}