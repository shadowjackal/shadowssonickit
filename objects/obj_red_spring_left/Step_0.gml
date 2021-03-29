/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_player){
	obj_player.hsp = -12;
	frame = 1;
	alarm[0] = 60;
	//locks player movement for 16 steps
	obj_player.movent = 1;
	obj_player.alarm[0] = 16;
	obj_player.xdir = 1;
}