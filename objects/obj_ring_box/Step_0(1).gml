/// @description Insert description here
// You can write your code in this editor
var checkers = 17;
if obj_player.ground = 1 checkers = 16; 
if obj_player.ground = 0 checkers = 18;

if collision_circle(obj_player.x,obj_player.y,16,self,true,false) && obj_player.action > 0 {
 if (((obj_player.action = 1 ) || (obj_player.action = 2 && obj_player.ground = 0 )) && obj_player.vsp >= 0) 
 {
	 obj_player.rings += 10;
	 obj_player.vsp = -obj_player.vsp + -1.25;
	 instance_destroy();
	 instance_create_depth(x,y,depth,obj_broken_box);
 }
 
 if obj_player.action = 2 && obj_player.ground = 1
 {
	 obj_player.rings += 10;
	 instance_destroy();
	 instance_create_depth(x,y,depth,obj_broken_box);
	 obj_player.ground = 0;
 }
}