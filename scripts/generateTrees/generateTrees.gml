var minX, minY, maxX, maxY, totalSpawns, spawnCount, randX, randY, newInst, randRarityRoll, maxDistFromCenter, distFromCenter;
var rareTreeCount = 0
var legendaryTreeCount = 0

// These are based on the tree sprite origin so the sprite is always in frame. It's a bit hacky, but this is a game jam after all.
minX = 32
minY = 40
maxX = room_width - 32
maxY = room_height - 40
totalSpawns = min(100 + floor((global.loopNumber+1) / 2), 200)
spawnCount = 0
maxDistFromCenter = point_distance(0, 0, room_width/2, room_height/2)

while (spawnCount < totalSpawns)
{
	randX = random_range(minX, maxX)
	randY = random_range(minY, maxY)
	newInst = instance_create_layer(randX, randY, "Trees", oTree)
	
	with (newInst)
	{
		var retries = 0
		while (collision_circle(randX, randY, 40, oWall, false, false) || place_meeting(x, y, oStartZone))
		{
			// Safety measure to prevent infinite loop if it can't find a valid position after multiple tries.
			retries++
			if (retries >= 10)
			{
				instance_destroy()
				break
			}
			
			x = random_range(minX, maxX)
			y = random_range(minY, maxY)
			event_user(0)
		}
	}

	spawnCount++
	
	if (!instance_exists(newInst))
		continue // Tree got destroyed from too many retries. Move on to next one.
	
	// Set the rarity of the tree. Further from center = higher chance of rare tree. The distance effects the roll by up to 90.
	// That means a max distance tree has a 100% chance of being max rarity while one in the center has a 10% chance.
	distFromCenter = point_distance(newInst.x, newInst.y, room_width/2, room_height/2)
	randRarityRoll = random_range(distFromCenter / maxDistFromCenter * 90, 100)
		
	if (randRarityRoll >= 90)
	{
		setTree(newInst, 2)
		legendaryTreeCount++
	}
	else if (randRarityRoll >= 70)
	{
		setTree(newInst, 1)
		rareTreeCount++
	}
}

// Still not enough of those higher-rarity tree types? Pick a few normal trees at random and convert them
while (legendaryTreeCount < min(10 + floor((global.loopNumber+1) / 5), 20))
{
	randX = random_range(minX, maxX)
	randY = random_range(minY, maxY)
	var nearest = instance_nearest(randX, randY, oTree)
	if (nearest.rarity < 2)
	{
		setTree(nearest, 2)
		legendaryTreeCount++
	}
}

while (rareTreeCount < min(10 + floor((global.loopNumber+1) / 5), 20))
{
	randX = random_range(minX, maxX)
	randY = random_range(minY, maxY)
	var nearest = instance_nearest(randX, randY, oTree)
	if (nearest.rarity < 1)
	{
		setTree(nearest, 1)
		rareTreeCount++
	}
}