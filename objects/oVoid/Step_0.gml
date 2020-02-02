/// @description Insert description here
// You can write your code in this editor

if instance_exists(oPlayer)
{
if distance_to_object(oPlayer)>1000
{
	instance_destroy()
}
}


color=make_color_hsv(random(255),random(150),random(255))