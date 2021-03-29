/// @description Insert description here
// You can write your code in this editor
if collision_circle(obj_player.x,obj_player.y,16,obj_hazard_test,false,false) && obj_player.rings > 0 && obj_player.action != 5 
{
obj_player.ground = false;
obj_player.vsp = -4;
obj_player.hsp = (sign(obj_player.x - x))*2;
obj_player.action = -5;
drop_ring(obj_player.rings);
}

if collision_circle(obj_player.x,obj_player.y,16,obj_hazard_test,false,false) && obj_player.action != -5 && obj_player.dead = 0 && obj_player.rings = 0
{
	obj_player.ground = 0;
	obj_player.vsp = -7;
	obj_player.hsp = 0;
	obj_player.dead = 1;
}