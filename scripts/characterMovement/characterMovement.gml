// argument0 = move speed
// argument1 = up sprite
// argument2 = down sprite
// argument3 = right sprite
var moveSpeed = argument0
var upSprite = argument1
var downSprite = argument2
var rightSprite = argument3

var hDir, vDir
hDir = buttonCheck(BUTTON_TYPE.RIGHT, BUTTON_EVENT.HELD) - buttonCheck(BUTTON_TYPE.LEFT, BUTTON_EVENT.HELD)
vDir = buttonCheck(BUTTON_TYPE.DOWN, BUTTON_EVENT.HELD) - buttonCheck(BUTTON_TYPE.UP, BUTTON_EVENT.HELD)

var adjustX = hDir * moveSpeed
while (adjustX != 0 && !place_meeting(x + sign(adjustX), y, oWall))
{
	x += sign(adjustX)
	if (abs(adjustX) > 0)
		adjustX -= sign(adjustX)
}
var adjustY = vDir * moveSpeed
while (adjustY != 0 && !place_meeting(x, y + sign(adjustY), oWall))
{
	y += sign(adjustY)
	if (abs(adjustY) > 0)
		adjustY -= sign(adjustY)
}

if (vDir == 0 && hDir == 0)
{
	image_speed = 0
	image_index = 0
}
else
{
	image_speed = 1
	if (vDir > 0)
	{
		sprite_index = downSprite
	}
	else if (vDir < 0)
	{
		sprite_index = upSprite
	}
	else if (hDir > 0)
	{
		sprite_index = rightSprite
		image_xscale = 1
	}
	else if (hDir < 0)
	{
		sprite_index = rightSprite
		image_xscale = -1
	}
}