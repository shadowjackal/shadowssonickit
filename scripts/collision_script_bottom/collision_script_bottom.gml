function collision_script_bottom(argument0) {
	mask = argument0;

if dead = 0 && collision_circle(x+asin*mask,y+acos*mask,6,obj_wall,true,true) return true;
if dead = 0 && collision_circle(x+asin*mask,y+acos*mask,6,obj_wall_n,true,true) return true;
if dead = 0 && xlayer = 0 && collision_circle(x+asin*mask,y+acos*mask,6,obj_bwall,true,true) return true;
if dead = 0 && xlayer = 1 && collision_circle(x+asin*mask,y+acos*mask,6,obj_fwall,true,true) return true;
if dead = 0 && (action != 1 && action != 2) && collision_circle(x+asin*mask,y+acos*mask,6,obj_box_wall,true,true) return true;
	return false


}
