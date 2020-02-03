/// Spawn more water
// Spread water to adjacent spaces so we get little pools. Odds of spread decreases further from source, to keep them from growing too large
var newWater, hOffset, vOffset
var dir = 0

while (dir < 360)
{
	var hOffset = lengthdir_x(sprite_width, dir)
	var vOffset = lengthdir_y(sprite_height, dir)
	// Make sure that placing water at this new position is actually valid
	if (!place_meeting(x + hOffset, y + vOffset, oWall) && !place_meeting(x + hOffset, y + vOffset, oStartZone))
	{
		var roll = random_range(1, 10) - (distFromSource * 0.5)
		if (roll >= 6)
		{
			newWater = instance_create_layer(x + hOffset, y + vOffset, "Water", oWater)
			with (newWater)
			{
				distFromSource = other.distFromSource + 1
				event_user(0)
			}
		}
	}
	
	dir += 90
}