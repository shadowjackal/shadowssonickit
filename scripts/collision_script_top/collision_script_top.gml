function collision_script_top(argument0) {
	mask = argument0;

	if dead = 0 && collision_point(x-asin*mask,y-acos*mask,obj_wall,true,true) return true;
	if dead = 0 && xlayer = 0 && collision_point(x-asin*mask,y-acos*mask,obj_bwall,true,true) return true;
	if dead = 0 && xlayer = 1 && collision_point(x-asin*mask,y-acos*mask,obj_fwall,true,true) return true;
    if dead = 0 && (action != 1 && action != 2) && collision_point(x-asin*mask,y-acos*mask,obj_box_wall,true,true) return true;
return false;


}
