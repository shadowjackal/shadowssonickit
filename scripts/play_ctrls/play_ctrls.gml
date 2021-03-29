function play_ctrls() {
#region key configurations
	key_d = dead = 0 && action != -5 && keyboard_check(vk_down);
	key_u = dead = 0 && action != -5 && keyboard_check(vk_up);
	key_r = dead = 0 && action != -5 && keyboard_check(vk_right);
	key_l = dead = 0 && action != -5 && keyboard_check(vk_left);
	key_a = dead = 0 && action != -5 && keyboard_check_pressed(vk_space);
	key_ar = dead = 0 && action != -5 && keyboard_check_released(vk_space);

	if action = 0 { 
		if key_l && movent = 0 && movent2 = 0 xdir = 1;
		if key_r && movent = 0 && movent2 = 0 xdir = -1;
	}
#endregion
var LoR = 0;
if key_r && hsp < 0 LoR = 3;
if key_r && hsp > 0 LoR = 1.5;
if key_l && hsp > 0 LoR = 3;
if key_l && hsp < 0 LoR = 1.5;
if hsp = 0 LoR = 3;
#region player movement
	if (action = 0 || action = 1) && movent = 0 {
		if ground {
		if key_r{if hsp >=0 {if hsp < hspm hsp+=acc} else hsp+=dcc;}if key_l{   
		if hsp<=0 {if hsp > -hspm hsp-=acc} else hsp-=dcc;}
	    if !key_r && !key_l{
	    if hsp > 0 hsp-=frc;
	    if hsp<0 hsp+=frc;
	    if hsp <= frc && hsp >= -frc hsp=0;}
	} else { 
	if key_r && dead = 0
	{
		if hsp < hspm hsp+=acc*LoR;
	}
	
	if key_l
	{
		if hsp > -hspm hsp-=acc*LoR
	}

	if !key_r && !key_l && dead = 0
	{
	   if hsp > 0 hsp-=frc;
	   if hsp<0 hsp+=frc;
	   if hsp <= frc && hsp >= -frc hsp=0;
	}
	}}

	if action = 2 && dead = 0 {
		if ground { 
			if hsp > bfr { hsp -= bfr; if key_l hsp -= bdcc}
			if hsp < -bfr { hsp += bfr; if key_r hsp += bdcc}
			if hsp < bfr && hsp > -bfr hsp = 0;
		} else { 
			if key_r
	{   if hsp >=0 {if hsp < hspm hsp+=acc*2};
	}
	if key_l && dead = 0
	{
	   if hsp<=0 {if hsp > -hspm hsp-=acc*2}
	}
		}}
#endregion

if key_l && (angle < 70 || angle > 290) && action = 0 && ground = 1 && hsp > 3 && genesis = 1 { sprp = spr_player_stopping; xdir = -1}
if key_r && (angle > 290 || angle < 70) && action = 0 && ground = 1 && hsp < -3 && genesis = 1 { sprp = spr_player_stopping; xdir = 1}

#region jumping

	if key_a && collision_script_bottom(16) && action != -1 && action != -2 && action != -3 && action != -4 && dead = 0
	{
	//audio_play_sound(jump,1,false);
	ground =0;
	vsp=acos*jmp-asin*hsp;
	hsp=acos*hsp+asin*jmp;
	angle = 0;
	acos=1;
	asin=0;

	if action = 0 {action=1};
	if action = -3 {action=1};
	if action = 2 {action=1};
	}

	if key_ar && action = 1 && vsp < sjmp { 
	 vsp = sjmp;
	}
	if ground && (action = 1) && dead = 0 { 
		action = 0;
	}




 #endregion
 
#region rolling and shit
	if key_d && ground && action = 0 { 
		if abs(hsp) < 1.03125 && (angle < 75 || angle > 285) { 
			//audio_play_sound(roll,1,false);
			hsp = 0; action = -1;};
		if abs(hsp) > 1.03125 {
			//audio_play_sound(roll,1,false);
			action = 2;};
	}
#endregion 

#region unduck
	if action = -1 && !key_d {
		action = 0;
	}
#endregion

#region unroll
	if action = 2 && abs(hsp) < 0.5 && ground && ((angle < 90 || angle > 270) || (angle > 90 || angle < 270)) {
		action = 0;
	} 
#endregion 

#region unroll on ground i guess <3 uwu
	if action = 2 && abs(vsp)>0 && ground  { 
		action = 0;
	}
#endregion 

#region checks for metal sonic charge
	if key_u && ground && action = 0 && (angle < 75 || angle > 285) {
		if abs(hsp) < 0.2 {hsp = 0; action = -3; }
	}

	if (!key_u | !ground | key_r | key_l) && action = -3 action = 0;
#endregion

#region peelout
	if action = -3 && key_a {
	//audio_play_sound(spindash,1,false)
	action = -4;
	}
	if action != -4 spot = 30;
	if action = -4 { 
		if key_ar {
		action = 0; if spot = 0 {
			//audio_play_sound(super_peel_release,1,false);
			hsp = -xdir^12}
	   } if spot != 0 spot-=1;
	}
#endregion

#region spindash
	if sp > 0 {sp = sp-((sp div 1)/265)}
	if sp > 64 sp = 64;
	if action = -2 && key_a { 
		//audio_play_sound(spindash,1,false)
		sp += 8
	};
	if action = -2 && !key_d { hsp = -xdir*(8+floor(sp)/8); action = 2; sp = 0;}
	if action = -1 && key_a { sp = 0; action = -2};
#endregion


}
