/// @description Insert description here
// You can write your code in this editor
if grabable = 1 && collision_rectangle(x-6,y-6,x+6,y+6,obj_player,true,true) { obj_player.rings += 1; instance_destroy();}
vsp -= grv;
if place_meeting(x,y,obj_wall) vsp = vsp*-0.75
x += spd;
y -= vsp;