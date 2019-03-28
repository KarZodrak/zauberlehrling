/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 52F7E673
/// @DnDArgument : "font" "fnt_default"
/// @DnDSaveInfo : "font" "4d6578eb-80fc-4c8a-93ed-c2a56ca64cca"
draw_set_font(fnt_default);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 4D4F8188
draw_set_colour($FFFFFFFF & $ffffff);
var l4D4F8188_0=($FFFFFFFF >> 24);
draw_set_alpha(l4D4F8188_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 7FE3D298
/// @DnDArgument : "x" "room_width-200"
/// @DnDArgument : "y" "40"
/// @DnDArgument : "sprite" "spr_ui_hearts"
/// @DnDArgument : "number" "player_lives"
/// @DnDSaveInfo : "sprite" "303d732e-a20f-47cd-a703-cd7c873b28c5"
var l7FE3D298_0 = sprite_get_width(spr_ui_hearts);
var l7FE3D298_1 = 0;
for(var l7FE3D298_2 = player_lives; l7FE3D298_2 > 0; --l7FE3D298_2) {
	draw_sprite(spr_ui_hearts, 0, room_width-200 + l7FE3D298_1, 40);
	l7FE3D298_1 += l7FE3D298_0;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 781C4088
/// @DnDArgument : "x" "20"
/// @DnDArgument : "y" "20"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "var" "debug"
draw_text(20, 20, string("") + string(debug));