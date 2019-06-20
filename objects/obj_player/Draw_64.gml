/// @DnDAction : YoYo Games.Rooms.If_First_Room
/// @DnDVersion : 1
/// @DnDHash : 31B1EC33
/// @DnDArgument : "not" "1"
if(room != room_first)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 52F7E673
	/// @DnDParent : 31B1EC33
	/// @DnDArgument : "font" "fnt_default"
	/// @DnDSaveInfo : "font" "4d6578eb-80fc-4c8a-93ed-c2a56ca64cca"
	draw_set_font(fnt_default);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 4D4F8188
	/// @DnDParent : 31B1EC33
	draw_set_colour($FFFFFFFF & $ffffff);
	var l4D4F8188_0=($FFFFFFFF >> 24);
	draw_set_alpha(l4D4F8188_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
	/// @DnDVersion : 1
	/// @DnDHash : 7FE3D298
	/// @DnDParent : 31B1EC33
	/// @DnDArgument : "x" "20"
	/// @DnDArgument : "y" "60"
	/// @DnDArgument : "sprite" "spr_ui_hearts"
	/// @DnDArgument : "number" "player_lives"
	/// @DnDSaveInfo : "sprite" "303d732e-a20f-47cd-a703-cd7c873b28c5"
	var l7FE3D298_0 = sprite_get_width(spr_ui_hearts);
	var l7FE3D298_1 = 0;
	for(var l7FE3D298_2 = player_lives; l7FE3D298_2 > 0; --l7FE3D298_2) {
		draw_sprite(spr_ui_hearts, 0, 20 + l7FE3D298_1, 60);
		l7FE3D298_1 += l7FE3D298_0;
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
	/// @DnDVersion : 1
	/// @DnDHash : 3C96B647
	/// @DnDParent : 31B1EC33
	/// @DnDArgument : "x1" "20"
	/// @DnDArgument : "y1" "35"
	/// @DnDArgument : "x2" "320"
	/// @DnDArgument : "y2" "55"
	/// @DnDArgument : "value" "player_mana"
	/// @DnDArgument : "backcol" "$00FFFFFF"
	/// @DnDArgument : "barcol" "$00000000"
	/// @DnDArgument : "mincol" "$FF997718"
	/// @DnDArgument : "maxcol" "$FFFFC82A"
	draw_healthbar(20, 35, 320, 55, player_mana, $00FFFFFF & $FFFFFF, $FF997718 & $FFFFFF, $FFFFC82A & $FFFFFF, 0, (($00FFFFFF>>24) != 0), (($00000000>>24) != 0));

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 781C4088
	/// @DnDParent : 31B1EC33
	/// @DnDArgument : "x" "20"
	/// @DnDArgument : "y" "20"
	/// @DnDArgument : "caption" """"
	/// @DnDArgument : "var" "debug"
	draw_text(20, 20, string("") + string(debug));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3296E2EC
	/// @DnDParent : 31B1EC33
	/// @DnDArgument : "var" "tutorialText"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" """"
	if(!(tutorialText == ""))
	{
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 37B0C3C2
		/// @DnDParent : 3296E2EC
		/// @DnDArgument : "color" "$504C4C4C"
		draw_set_colour($504C4C4C & $ffffff);
		var l37B0C3C2_0=($504C4C4C >> 24);
		draw_set_alpha(l37B0C3C2_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
		/// @DnDVersion : 1
		/// @DnDHash : 7B5232E3
		/// @DnDParent : 3296E2EC
		/// @DnDArgument : "x1" "posX-3"
		/// @DnDArgument : "y1" "posY-3"
		/// @DnDArgument : "x2" "posX+boxWidth+3"
		/// @DnDArgument : "y2" "posY+boxHeight+3"
		/// @DnDArgument : "fill" "1"
		draw_rectangle(posX-3, posY-3, posX+boxWidth+3, posY+boxHeight+3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 242DDBC4
		/// @DnDParent : 3296E2EC
		/// @DnDArgument : "color" "$66CCCCCC"
		draw_set_colour($66CCCCCC & $ffffff);
		var l242DDBC4_0=($66CCCCCC >> 24);
		draw_set_alpha(l242DDBC4_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
		/// @DnDVersion : 1
		/// @DnDHash : 2C7C9706
		/// @DnDParent : 3296E2EC
		/// @DnDArgument : "x1" "posX"
		/// @DnDArgument : "y1" "posY"
		/// @DnDArgument : "x2" "posX+boxWidth"
		/// @DnDArgument : "y2" "posY+boxHeight"
		/// @DnDArgument : "fill" "1"
		draw_rectangle(posX, posY, posX+boxWidth, posY+boxHeight, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 471BD6FC
		/// @DnDParent : 3296E2EC
		/// @DnDArgument : "color" "$FF000000"
		draw_set_colour($FF000000 & $ffffff);
		var l471BD6FC_0=($FF000000 >> 24);
		draw_set_alpha(l471BD6FC_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 1B72176E
		/// @DnDParent : 3296E2EC
		/// @DnDArgument : "x" "posX+padding"
		/// @DnDArgument : "y" "posY+padding"
		/// @DnDArgument : "caption" """"
		/// @DnDArgument : "var" "tutorialText"
		draw_text(posX+padding, posY+padding, string("") + string(tutorialText));
	}
}