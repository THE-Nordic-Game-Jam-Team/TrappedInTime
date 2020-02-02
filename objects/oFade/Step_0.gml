color=c_white

if dir==1
{
	alpha+=.0025
	if alpha>1
	room_goto(targetRoom)
}
else
{
	alpha-=.005
	if alpha<0
	instance_destroy()
}