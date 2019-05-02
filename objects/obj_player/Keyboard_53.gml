/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 59AF4206
/// @DnDArgument : "var" "cheat"
/// @DnDArgument : "value" "1"
if(cheat == 1)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 123865EB
	/// @DnDParent : 59AF4206
	/// @DnDArgument : "room" "rm_boss"
	/// @DnDSaveInfo : "room" "12d881fa-492b-42b5-ab4c-74c224764026"
	room_goto(rm_boss);
}