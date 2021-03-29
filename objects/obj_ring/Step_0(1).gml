/// @description Insert description here
// You can write your code in this editor
if collision_rectangle(x-6,y-6,x+6,y+6,obj_player,true,true) 
{
obj_player.rings += 1;
instance_create_depth(x,y,depth,obj_ring_glimmer);
instance_destroy(id);
}