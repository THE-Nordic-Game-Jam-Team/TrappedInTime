var minX, minY, maxX, maxY, totalSpawns, spawnCount, randX, randY, newInst;

minX = 0
minY = 0
maxX = room_width - sprite_get_width(sWater)
maxY = room_height - sprite_get_height(sWater)
totalSpawns = 20
spawnCount = 0

while (spawnCount < totalSpawns)
{
	randX = random_range(minX, maxX)
	randY = random_range(minY, maxY)
	if (!position_meeting(randX, randY, oWall))
	{
		newInst = instance_create_layer(randX, randY, "Water", oWater)
		with (newInst)
		{
			distFromSource = 0
			event_user(0)
		}
		spawnCount++
	}
}
