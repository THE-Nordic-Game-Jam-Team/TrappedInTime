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
	var xPrev=x
	var yPrev=y
	
	var dashDistance = 80 * teleportLevel
	x = clamp(x + lengthdir_x(dashDistance, pointDir), 0 + sprite_get_xoffset(sprite_index), room_width - sprite_get_xoffset(sprite_index))
	y = clamp(y + lengthdir_y(dashDistance, pointDir), sprite_get_yoffset(sprite_index), room_height)
	// If we landed on an obstacle, push the user towards the center of the room until they are free
	// Center of the room because that way we are sure they don't get pushed off screen
	while (position_meeting(x, y, oWall))
	{
		x += sign(room_width/2 - x)
		y += sign(room_height/2 - y)
	}
	
	
	var effectspawn=instance_create_layer(x,y,"Instances",oFX)
	effectspawn.sprite_index=sFXTeleport
	effectspawn.image_angle=point_direction(xPrev,yPrev,x,y)
	
	var afterImage0=instance_create_layer(x,y,"Instances",oAfterImage)
	afterImage0.image_blend=c_fuchsia
	afterImage0.sprite_index=sprite_index
	afterImage0.image_index=image_index
	afterImage0.image_xscale=image_xscale
	var afterImage1=instance_create_layer((xPrev+x)/2,(yPrev+y)/2,"Instances",oAfterImage)
	afterImage1.image_blend=c_aqua
	afterImage1.sprite_index=sprite_index
	afterImage1.image_index=image_index
	afterImage1.image_xscale=image_xscale
	
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