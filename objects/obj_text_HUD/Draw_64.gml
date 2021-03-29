/// @description Insert description here
// You can write your code in this editor
draw_set_font(bitmap_font_yellow);
draw_text_transformed(64,64,"SCORE",3.2,3.2,image_angle);
draw_text_transformed(64,114,"TIME", 3.2,3.2,image_angle);
draw_text_transformed(64,114+50,"RINGS",3.2,3.2,image_angle);

draw_set_font(bitmap_font_white);
draw_text_transformed(239,64,string(obj_player.ground),2.8,2.8,image_angle);
draw_text_transformed(128+64,114,string(obj_player.time_1) + " ' " + string(obj_player.time_split) + string(obj_player.time_2) + " \" " + string(obj_player.str_time_3_1) + string(obj_player.str_time_3_2),2.8,2.8,image_angle);
draw_text_transformed(239,114+50,string(obj_player.rings),2.8,2.8,image_angle);


if mode = 1 {
draw_set_font(bitmap_font_yellow)
draw_text_transformed(64,64,"G R O U N D", 2.2,2.2,image_angle);
draw_text_transformed(64,97,"H S P", 2.2,2.2,image_angle);
draw_text_transformed(64,130,"V S P", 2.2,2.2,image_angle);	
	
	
	
	
}