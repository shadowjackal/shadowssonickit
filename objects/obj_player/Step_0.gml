/// @description Insert description here
// You can write your code in this editor
vartime = !vartime;
play_phys();
play_ctrls();
s_angle = angle;

if (sprp = spr_player_ball) s_angle = 0;

#region springs
//yellow springs
if collision_circle(x,y,12,obj_yellow_spring_up,true,true) 
{
ground = false;
vsp = -10;
action = 0;
springed = 1;
}

#endregion

#region switches and triggers (usually relating to layers btw)
if collision_circle(x,y,17,obj_t_background,true,false) { xlayer = 0 }
if collision_circle(x,y,17,obj_t_foreground,true,false) { xlayer = 1 }
if collision_circle(x,y,17,obj_t_switch,true,false) { 
	if hsp > 0 && ground xlayer = 0;
	if hsp < 0 && ground xlayer = 1;
	}
if collision_circle(x,y,17,obj_t_switchR,true,false) { 
	if hsp < 0 && ground xlayer = 0;
	if hsp > 0 && ground xlayer = 1;
	}
#endregion	

#region directional code. self explanatory.
if hsp > -0 direction_ = 1;
if hsp < 0 direction_ = 0;

#endregion

#region timer and time related stuff
time_3 = current_time - timer_start;
if time_3 > 999 
{
	timer_start = current_time;
	time_2 += 1;
}

if time_2 < 10 
{
time_split = 0;
} else time_split = ""

if time_2 > 59 {
time_2 = 0;
time_1 += 1;
}

if time_3 > 99 str_time_3_1 = string_char_at(time_3,1) else str_time_3_1 = 0;
if time_3 > 99 str_time_3_2 = string_char_at(time_3,2) else str_time_3_2 = string_char_at(time_3,1);
#endregion

if action = -5 && ground = 1
{ 
hsp = 0;
action = 0;
}
if action = -5 
{
 grv = 0.1875;
 adrag = 0;
}
else 
{
grv =  0.21875;
adrag = 0.96875;
}
if dead = 1 depth = -90;
if keyboard_check(vk_escape) game_end();
if keyboard_check(ord("R")) game_restart();
if keyboard_check(ord("S")) spacey = 1;
if spacey = 1 sprp = spr_player_forward_facing;