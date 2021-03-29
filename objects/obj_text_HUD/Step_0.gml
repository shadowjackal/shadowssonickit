/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(ord("T")) && mode = 0 && changer = 1 
{
mode = 1;
alarm[0] = 5;
changer = 0;
}
if keyboard_check_pressed(ord("T")) && mode = 1 && changer = 1
{
mode = 0;
alarm[0] = 5;
changer = 0;
}