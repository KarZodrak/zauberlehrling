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
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0EDCD84E
	/// @DnDParent : 0B8C2763
	/// @DnDArgument : "spriteind" "spr_player_jump"
	/// @DnDSaveInfo : "spriteind" "3af6df99-20cd-420c-871d-ce83c40da436"
	sprite_index = spr_player_jump;
	image_index = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 4E99CA7E
	/// @DnDParent : 0B8C2763
	/// @DnDArgument : "force" "player_gravity"
	gravity = player_gravity;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 4A23C86F
	/// @DnDParent : 0B8C2763
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_waterfall"
	/// @DnDSaveInfo : "object" "afd1fb4f-2c1a-4a8d-8ab4-f3b168e0c587"
	var l4A23C86F_0 = instance_place(x + 0, y + 0, obj_waterfall);
	if ((l4A23C86F_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 63A427B5
		/// @DnDParent : 4A23C86F
		/// @DnDArgument : "var" "speed"
		speed = 0;
	}
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
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1ED2D9F2
		/// @DnDParent : 3F427ECE
		/// @DnDArgument : "var" "player_mana"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "cost_skill_air"
		if(player_mana > cost_skill_air)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4BAD101E
			/// @DnDParent : 1ED2D9F2
			/// @DnDArgument : "expr" "-cost_skill_air"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "player_mana"
			player_mana += -cost_skill_air;
		
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 4B99E1B1
			/// @DnDParent : 1ED2D9F2
			/// @DnDArgument : "speed" "glide_speed"
			speed = glide_speed;
		}
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
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 304E51F4
	/// @DnDParent : 2CFBE0F8
	/// @DnDArgument : "var" "player_mana"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "cost_skill_water"
	if(player_mana > cost_skill_water)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3DDBD763
		/// @DnDParent : 304E51F4
		/// @DnDArgument : "expr" "-cost_skill_water"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "player_mana"
		player_mana += -cost_skill_water;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 65D8A612
		/// @DnDParent : 304E51F4
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "heal_charge_tick"
		heal_charge_tick += 1;
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 3ED54DDE
		/// @DnDParent : 304E51F4
		/// @DnDArgument : "var" "rng"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "max" "100"
		rng = floor(random_range(0, 100 + 1));
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 03EA2154
		/// @DnDParent : 304E51F4
		/// @DnDArgument : "var" "rng"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "20"
		if(rng < 20)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 749EC9D1
			/// @DnDParent : 03EA2154
			/// @DnDArgument : "xpos" "random(128)-64"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_healEffect"
			/// @DnDArgument : "layer" ""UI""
			/// @DnDSaveInfo : "objectid" "8f56ca77-2b4d-43c6-a78c-0c7a7ac03291"
			instance_create_layer(x + random(128)-64, y + 0, "UI", obj_healEffect);
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1F8AF3C0
		/// @DnDParent : 304E51F4
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

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7DBA9428
	/// @DnDParent : 2CFBE0F8
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4375BFDF
		/// @DnDParent : 7DBA9428
		/// @DnDArgument : "var" "health_chargeing"
		health_chargeing = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 298A7BA0
		/// @DnDParent : 7DBA9428
		/// @DnDArgument : "var" "heal_charge_tick"
		heal_charge_tick = 0;
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

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 575038D1
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_height+256"
if(y > room_height+256)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 70DE6D09
	/// @DnDParent : 575038D1
	/// @DnDArgument : "x" "0"
	/// @DnDArgument : "y" "0"
	x = 0;
	y = 0;

	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 0C57D22A
	/// @DnDParent : 575038D1
	room_restart();
}