/// @description Insert description here
// You can write your code in this editor
// You can write your code in this editor
depth=-9999999999
color=c_white

if dir==1
{
	image_alpha+=.0025
	if image_alpha>1
	room_goto(targetRoom)
}
else
{
	image_alpha-=.005
	if image_alpha<0
	instance_destroy()
}