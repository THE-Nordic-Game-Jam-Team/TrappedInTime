var minX, minY, maxX, maxY, totalSpawns, spawnCount, randX, randY, newInst;

minX = 0
minY = 0
maxX = room_width - sprite_get_width(sWater)
maxY = room_height - sprite_get_height(sWater)
totalSpawns = min(25 + (global.loopNumber+1) / 4, 50)
spawnCount = 0

while (spawnCount < totalSpawns)
{
	randX = random_range(minX, maxX)
	randY = random_range(minY, maxY)
	newInst = instance_create_layer(randX, randY, "Water", oWater)
	with (newInst)
	{
		while (place_meeting(x, y, oWall) || place_meeting(x, y, oStartZone))
		{
			x = random_range(minX, maxX)
			y = random_range(minY, maxY)
			depth = -y
		}
		
		// Once we've found a valid position, try spreading water pool
		distFromSource = 0
		event_user(0)
	}

	spawnCount++
}
