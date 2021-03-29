/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_player){
	obj_player.ground = 0;
	obj_player.vsp = 8;
	obj_player.hsp = 8;
	frame = 1;
	alarm[0] = 60;
	obj_player.movent = 1;
	obj_player.alarm[0] = 16;
	obj_player.xdir = -1;
	obj_player.x += 6
	obj_player.y += 6
}