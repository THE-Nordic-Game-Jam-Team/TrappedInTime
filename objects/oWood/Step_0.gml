depth = -y
image_index = rarity

speed = max(speed - 0.25, 0)
// Colliding with water, wall, or tree OTHER THAN the tree that spawned this wood
if (place_meeting(x, y, oWall) && !place_meeting(x, y, parentTree))
{
	speed = 0
}