/// @description Insert description here
// You can write your code in this editor

color=make_color_hsv(random(255),random(255),random(255))
color2=c_white

if global.upgradeLevel[UPGRADE_TYPE.TEAR] > 3
{
	color=make_color_hsv(random(255),random(150),random(255))
}
if global.upgradeLevel[UPGRADE_TYPE.TEAR] >=7
{
	if irandom(2)==0
	{
		color=c_black
	}
	if irandom(1.25)==0
	{
		color2=c_black
	}
}