function collision_script_left(argument0) {
	mask = argument0;

	if dead = 0 && collision_point(x-(acos*mask)-asin*2,y+(asin*mask)-acos*2,obj_wall,true,true) return true;
	if dead = 0 && xlayer = 0 && collision_point(x-(acos*mask)-asin*2,y+(asin*mask)-acos*2,obj_bwall,true,true) return true;
	if dead = 0 && xlayer = 1 && collision_point(x-(acos*mask)-asin*2,y+(asin*mask)-acos*2,obj_fwall,true,true) return true;
	if dead = 0 && (action != 1 && action != 2) && collision_point(x-(acos*mask)-asin*2,y+(asin*mask)-acos*2,obj_box_wall,true,true) return true;
	return false;


}
