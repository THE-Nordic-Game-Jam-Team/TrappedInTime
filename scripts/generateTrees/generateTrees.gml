var minX, minY, maxX, maxY, spawnCount, randX, randY, newInst;

minX = 32
minY = 40
maxX = room_width - 32
maxY = room_height - 40
spawnCount = 40

while (instance_number(oTree) < spawnCount)
{
	randX = random_range(minX, maxX)
	randY = random_range(minY, maxY)
	if (!collision_circle(randX, randY, 40, oTree, false, false))
	{
		newInst = instance_create_layer(randX, randY, "Trees", oTree)
	}
}