// argument0 = move speed
// argument1 = up sprite
// argument2 = down sprite
// argument3 = right sprite
var moveSpeed = argument0
var upSprite = argument1
var downSprite = argument2
var rightSprite = argument3

// Apply any upgrades to the player's speed
moveSpeed += getUpgradeLevel(UPGRADE_TYPE.MOVE_SPEED)

var hDir, vDir, pointDir
hDir = buttonCheck(BUTTON_TYPE.RIGHT, BUTTON_EVENT.HELD) - buttonCheck(BUTTON_TYPE.LEFT, BUTTON_EVENT.HELD)
vDir = buttonCheck(BUTTON_TYPE.DOWN, BUTTON_EVENT.HELD) - buttonCheck(BUTTON_TYPE.UP, BUTTON_EVENT.HELD)
pointDir = point_direction(x, y, x + hDir, y + vDir)

var teleportLevel = getUpgradeLevel(UPGRADE_TYPE.TELEPORT)
if (teleportLevel > 0 && buttonCheck(BUTTON_TYPE.DASH, BUTTON_EVENT.PRESSED) && global.dashCooldown <= 0)
{
	var dashDistance = 20 + 60 * teleportLevel
	x = clamp(x + lengthdir_x(dashDistance, pointDir), 0 + sprite_get_xoffset(sprite_index), room_width - sprite_get_xoffset(sprite_index))
	y = clamp(y + lengthdir_y(dashDistance, pointDir), sprite_get_yoffset(sprite_index), room_height)
	// If we landed on an obstacle, push the user towards the center of the room until they are free
	// Center of the room because that way we are sure they don't get pushed off screen
	while (position_meeting(x, y, oWall))
	{
		x += sign(room_width/2 - x)
		y += sign(room_height/2 - y)
	}
	
	global.dashCooldown = (room_speed * 3 + room_speed / 2) - room_speed/2 * teleportLevel
	exit // Don't do any other movement! The player is teleporting so that replaces it
}

if (vDir != 0 || hDir != 0)
{
	var adjustX = ceil(lengthdir_x(moveSpeed, pointDir)) + ifElse(vDir != 0, sign(hDir), 0)
	while (adjustX != 0 && !place_meeting(x + sign(adjustX), y, oWall))
	{
		x += sign(adjustX)
		if (abs(adjustX) > 0)
			adjustX -= sign(adjustX)
	}
	var adjustY = ceil(lengthdir_y(moveSpeed, pointDir)) + ifElse(hDir != 0, sign(vDir), 0)
	while (adjustY != 0 && !place_meeting(x, y + sign(adjustY), oWall))
	{
		y += sign(adjustY)
		if (abs(adjustY) > 0)
			adjustY -= sign(adjustY)
	}
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