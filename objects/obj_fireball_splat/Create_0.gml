/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
/// @DnDVersion : 1
/// @DnDHash : 52C74152
/// @DnDArgument : "force" "0.5"
gravity = 0.5;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 013D9BE6
/// @DnDArgument : "expr" "random(360)-180"
/// @DnDArgument : "var" "direction"
direction = random(360)-180;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 6B193807
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 4A40334A
/// @DnDArgument : "speed" "5"
speed = 5;