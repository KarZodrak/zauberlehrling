/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 56AE2066
/// @DnDArgument : "var" "targetLevel"
/// @DnDArgument : "value" "rm_air"
if(targetLevel == rm_air)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 35E08F12
	/// @DnDParent : 56AE2066
	/// @DnDArgument : "spriteind" "spr_portalAir"
	/// @DnDSaveInfo : "spriteind" "4afb04de-a3ed-4d38-b1e5-3f782930bbcd"
	sprite_index = spr_portalAir;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 29381621
/// @DnDArgument : "var" "targetLevel"
/// @DnDArgument : "value" "rm_earth"
if(targetLevel == rm_earth)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 323A3CF7
	/// @DnDParent : 29381621
	/// @DnDArgument : "spriteind" "spr_portalEarth"
	/// @DnDSaveInfo : "spriteind" "8087e292-c576-4674-b73f-49bc608a998b"
	sprite_index = spr_portalEarth;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 13AA57B7
/// @DnDArgument : "var" "targetLevel"
/// @DnDArgument : "value" "rm_fire"
if(targetLevel == rm_fire)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 79227D00
	/// @DnDParent : 13AA57B7
	/// @DnDArgument : "spriteind" "spr_portalFire"
	/// @DnDSaveInfo : "spriteind" "354527f4-3fee-4e5f-8c9f-ad5dd491f609"
	sprite_index = spr_portalFire;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 36119F66
/// @DnDArgument : "var" "targetLevel"
/// @DnDArgument : "value" "rm_water"
if(targetLevel == rm_water)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 35097792
	/// @DnDParent : 36119F66
	/// @DnDArgument : "spriteind" "spr_portalWater"
	/// @DnDSaveInfo : "spriteind" "9176287d-117f-4de9-be66-06314723b0f0"
	sprite_index = spr_portalWater;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 37480908
/// @DnDArgument : "var" "targetLevel"
/// @DnDArgument : "value" "rm_boss"
if(targetLevel == rm_boss)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0ACE267F
	/// @DnDParent : 37480908
	/// @DnDArgument : "spriteind" "spr_portalBoss"
	/// @DnDSaveInfo : "spriteind" "bde1665e-ec66-4cb0-9d6e-5bc74a05b538"
	sprite_index = spr_portalBoss;
	image_index = 0;
}