function drop_ring(rings)
{
 var t = 0;
 var angle = 101.25;
 var n = false;
 var spd = 4;
 if rings > 32 rings = 32;
 while t < rings
   {
   var bouncy_ring = instance_create_depth(obj_player.x,obj_player.y,-90,obj_bouncy_ring);
   bouncy_ring.vsp = -sin(angle)*spd;
   bouncy_ring.spd = cos(angle)*spd; // cosine(angle)*speed
   if n = true
     {
     bouncy_ring.spd = bouncy_ring.spd*-1;
     angle += 22.5;
     }
   n = !n;
   t += 1
   if t = 16
     {
     spd = 2 ; 
     angle = 101.25;
     }
   }
   
   obj_player.rings = 0;
 }