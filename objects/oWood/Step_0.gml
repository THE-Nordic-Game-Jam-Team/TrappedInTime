depth = -y
image_index = rarity

speed = max(speed - 0.25, 0)
// Colliding with water, wall, or tree OTHER THAN the tree that spawned this wood
if (place_meeting(x, y, oWall) && !place_meeting(x, y, parentTree))
{
	speed = 0
}

if (speed < 1 && !canMagnet)
{
	canMagnet = true
}

if (instance_exists(oPlayer) && canMagnet)
{
	var magnetLevel = getUpgradeLevel(UPGRADE_TYPE.MAGNET)
	var distance = distance_to_object(oPlayer)
	if (magnetLevel > 0 && distance <= 10 + (magnetLevel * 15))
	{
		move_towards_point(oPlayer.x, oPlayer.y, min(2 + magnetLevel * 2, distance))
	}
}