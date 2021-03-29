/// @description Insert description here
// You can write your code in this editor

//if angle < 280 && angle > 269 x_offset = 1.95 else if sprp = spr_player_push && xdir = -1 x_offset = 2 else x_offset = 0;
//if angle > 90 &&  action = 0 && angle < 270 y_offset = 1.95 else y_offset = 0;
//if action = 1 && keyboard_check(vk_left) x_offs3t = 0.1 else if action = 1 x_offs3t = 3;
draw_sprite_ext(sprp,image_i,floor(x) + floor(1) ,floor(y) + floor(y_offset),-xdir,1,s_angle,c_white,1)

#region acts as replacement for image_speed
if image_i > 998 image_i = 0;
if frame>=1 {frame = 0;image_i+=1;}
#endregion

#region makes sonic stand (sprite)
if hsp = 0 && ground && action = 0 && dead = 0 { 
	sprp = spr_player_standing;
	last_action = 0;
}
#endregion 

#region walking running sprinting 
if (hsp != 0 || !ground) && action = 0 && dead = 0 {
	if last_action = 0 image_i = 0;
	last_action = 1;
	if sprp != spr_player_push frame += 1/max(8+(xdir*hsp),1)
if sprp = spr_player_push frame += 0.25/max(4+(xdir*hsp),1)
	if abs(hsp) < 6 sprp = spr_player_walking;
	if abs(hsp) >= 6 && hsp < 12 sprp = spr_player_running;
	if abs(hsp) >= 12 sprp = spr_player_max_speed;
}
#endregion 

#region rolling and jumping 
if action = 2 && dead = 0 { 
frame +=1/max(5-abs(hsp),1);
	sprp = spr_player_ball;
}
if action = 1 && dead = 0 { 
	frame +=1/max(5-abs(hsp),1);
	sprp = spr_player_ball
}
#endregion

#region looking up and down
if action = -1 && dead = 0 { 
	sprp = spr_player_looking_down; image_i = 1;
}

if action = -3 {
	sprp = spr_player_looking_up; image_i = 1;
}
#endregion

#region peelout and spindash
if action = -4 {
	frame += 1/max(8-(xdir*hsp*2),1)
	if spot >= 17 { sprp = spr_player_walking}
	if spot >= 5 && spot < 17 { sprp = spr_player_running}
	if spot < 5 sprp = spr_player_max_speed;
}

if action = -2 {
	frame += 0.5
	if key_a image_i = 0;
	sprp = spr_player_spindash;
}

if push = 1 sprp = spr_player_push;

if springed = 1 && action = 0 {
sprp = spr_player_spin;
frame += 0.1;
}
if action = -5 {
	sprp = spr_player_hurt;
	frame += 0.25/max(2,1)
}

if dead = 1 sprp = spr_player_dead;
#endregion
