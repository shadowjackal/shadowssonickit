function collision_script_right_line(argument0) {
	mask = argument0;
	line = floor(mask*2.5);

	if dead = 0 && collision_line(x+(acos*mask)+(asin*mask),y-(asin*mask)+(acos*mask),x+(acos*mask)+(asin*line),y-(asin*mask)+(acos*line),obj_wall,true,true) return true;
    if dead = 0 && xlayer = 0 && collision_line(x+(acos*mask)+(asin*mask),y-(asin*mask)+(acos*mask),x+(acos*mask)+(asin*line),y-(asin*mask)+(acos*line),obj_bwall,true,true) return true;
	if dead = 0 && xlayer = 1 && collision_line(x+(acos*mask)+(asin*mask),y-(asin*mask)+(acos*mask),x+(acos*mask)+(asin*line),y-(asin*mask)+(acos*line),obj_fwall,true,true) return true;
	if dead = 0 && collision_line(x+(acos*mask)+(asin*mask),y-(asin*mask)+(acos*mask),x+(acos*mask)+(asin*line),y-(asin*mask)+(acos*line),obj_box_wall,true,true) return true;
	return false;


}
