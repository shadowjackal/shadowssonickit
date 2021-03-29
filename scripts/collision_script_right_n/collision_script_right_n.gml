function collision_script_right_n(argument0) {
	mask = argument0;

	if collision_point(x+(acos*mask)-asin*2,y-(asin*mask)-acos*2,obj_wall_n,true,true) return true;
	return false;


}
