/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 0919A602
speed = 0;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 53CCB4A3
/// @DnDArgument : "spriteind" "spr_player_64"
/// @DnDSaveInfo : "spriteind" "d807030f-098a-4eec-839e-df95c776ce88"
sprite_index = spr_player_64;
image_index = 0;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 67A489A2
/// @DnDArgument : "key" "ord("D")"
var l67A489A2_0;
l67A489A2_0 = keyboard_check(ord("D"));
if (l67A489A2_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6325656D
	/// @DnDParent : 67A489A2
	/// @DnDArgument : "spriteind" "spr_player_walk"
	/// @DnDSaveInfo : "spriteind" "a9ea736b-0c0e-4383-b78c-aa7e40d5ff3c"
	sprite_index = spr_player_walk;
	image_index = 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 0E75F66D
	/// @DnDParent : 67A489A2
	image_xscale = 1;
	image_yscale = 1;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 02B58062
/// @DnDArgument : "key" "ord("A")"
var l02B58062_0;
l02B58062_0 = keyboard_check(ord("A"));
if (l02B58062_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 34FE63EB
	/// @DnDParent : 02B58062
	/// @DnDArgument : "spriteind" "spr_player_walk"
	/// @DnDSaveInfo : "spriteind" "a9ea736b-0c0e-4383-b78c-aa7e40d5ff3c"
	sprite_index = spr_player_walk;
	image_index = 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 5C59B1B1
	/// @DnDParent : 02B58062
	/// @DnDArgument : "xscale" "-1"
	image_xscale = -1;
	image_yscale = 1;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3C6A3CE8
/// @DnDArgument : "code" "move_contact_all(direction,16);"
move_contact_all(direction,16);

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 73FA7E41
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_block_moving"
/// @DnDSaveInfo : "object" "15438731-f174-419a-b3c1-c4b67ee146da"
var l73FA7E41_0 = instance_place(x + 0, y + 1, obj_block_moving);
if ((l73FA7E41_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 079F0F10
	/// @DnDParent : 73FA7E41
	/// @DnDArgument : "expr" "other.direction"
	/// @DnDArgument : "var" "direction"
	direction = other.direction;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3749052D
	/// @DnDInput : 2
	/// @DnDParent : 73FA7E41
	/// @DnDArgument : "expr" "other.speed"
	/// @DnDArgument : "expr_1" "1"
	/// @DnDArgument : "var" "speed"
	/// @DnDArgument : "var_1" "moving_plat"
	speed = other.speed;
	moving_plat = 1;
}