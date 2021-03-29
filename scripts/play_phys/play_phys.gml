function play_phys() {
	
	var angle_previous = 0;

	//limits
	if hsp > hspl hsp = hspl;
	if hsp<-hspl hsp = -hspl;
	if vsp>vspl vsp = vspl;
	if vsp<-vspl vsp=-vspl;

	//h movemnt

	if hsp >0

	{

	         for(i=0; i<hsp && !collision_script_right(16.5) ;i+=0.1)

	    {

	        x+=acos/10;
	        y-=asin/10;
	    }

	}

	if hsp<0

	{

	   for(i=0;i>hsp && !collision_script_left(16);i-=0.1)

	   {

	      x-=acos/10;
	      y+=asin/10;
	   }

	}

	//v motion

if vsp>0

	{

	   for(i=0;i<vsp && !collision_script_bottom(16);i+=0.1)

	   {

	      y+=1/10;

	   }

	}

	if vsp<0

	{

	   for(i=0;i>vsp && !collision_script_top(16);i-=0.1;)

	   {

	      y-=1/10;

	   }

	}
	

	///wall collision & block collision (blocks meaning objects like springs and item boxes
   
	while(collision_script_right(17))

	{

	   x-=acos/10;
	   y+=asin/10;
       hsp = 0;
	  
	}

	while(collision_script_left(16.5))

	{

	   x+=acos/10;
	   y-=asin/10;
	   hsp = 0;
	}
	#region activates pushing animation
	if(collision_script_left(17.5))
	{
	if keyboard_check(vk_left) && !keyboard_check(vk_right) && ground = 1 {sprp = spr_player_push;
	hsp = 0;}
	} else 
	if(collision_script_right(18))
	{
	 if !keyboard_check(vk_left) && keyboard_check(vk_right) && ground = 1 sprp = spr_player_push;
	} else 
	if collision_script_left_n(18)
	{
	 if keyboard_check(vk_left) && !keyboard_check(vk_right) && ground = 1 sprp = spr_player_push;		
	} else
	if collision_script_right_n(18)
	{
		if !keyboard_check(vk_left) && keyboard_check(vk_right) && ground = 1 sprp = spr_player_push;
} else push = 0;
	#endregion
	
	
    	while(collision_script_right_n(16))
	{
	   x-=acos;
	   y+=asin;
	   hsp = 0;
	}

	while(collision_script_left_n(16))
	{
	   x+=acos;
	   y-=asin;
	   hsp = 0;
	}
   //crushig
  //4 if collision_script_bottom(17) && collision_script_top(17) && dead = 0 dead = 1;
   //if collision_script_left(17) && collision_script_right(17) && dead = 0 dead = 1;
   
   if action = 1 && vsp < 0 && y = yprevious vsp = 0; 
   
	//landing.
	if vsp>=0 && !ground && collision_script_bottom(16) && (collision_script_left_line(16) || collision_script_right_line(16))
	{
	   angle = find_angle(angle,10,16);
	   acos=cos(degtorad(angle));
	   asin=sin(degtorad(angle));

	         if angle <= 90 && angle > 0 {movent = 1; alarm[0] = 1; hsp -=(acos*vsp);} else if angle >= 270 && angle < 360 {hsp = 0;hsp +=(acos*vsp);} else hsp-=(asin*vsp) 
	         vsp=0;
	         ground=1;
			 springed = 0;
	}
	
	//lock sonic to the gurroundu
	if ground {
		while collision_script_main(16)
		{x-=asin;y-=acos;}
		while (!collision_script_main(16))
		{x+=asin;y+=acos;}
	}
	/// leave ground

    if (!collision_script_left_line(16) || !collision_script_right_line(16)) && ground {
	      angle = 0  
		  vsp=-asin*hsp;
	      hsp=acos*hsp;
	      if  (!collision_script_left_line(16) || !collision_script_right_line(16)) && hsp != 0 && ground  ground=false;
	}
	
	///gravity

	if !ground vsp+=grv;

	if action = 0 slp = 0.125;
	if action = 2 {if sign(hsp) = sign(asin) slp=0.078125; if sign(hsp) != sign(asin) slp =0.3125;}
	if action >=0 hsp-= slp*asin;
  
	 if angle >= 90 && angle <= 270 && action != 2 && abs(hsp) < 2.5 {
		 angle = 0;
		 vsp = -(asin*hsp);
		 hsp = (acos*hsp);
		 ground = 0;
	}
	
	//anglestuff
	if ground  && collision_script_left_line(16) && collision_script_right_line(16) //&& !place_meeting(x,y,obj_wall_no_angle)
	{
		angle = find_angle(angle,16,24);
	}
	else 
	{
		angle = 0;
	}
	
	if collision_circle(x,y,1,obj_edge,true,true) angle = 0;
	
	angle_previous = angle;
	
	acos = cos(degtorad(angle));
	asin = sin(degtorad(angle));

 if abs(vsp) > 0 && ground = 0 && y = yprevious && x = xprevious
 {
movent = 1;
obj_player.alarm[0] = 1;
 }
}