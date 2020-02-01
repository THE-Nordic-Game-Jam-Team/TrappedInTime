/// Spawn more water
// Spread water to adjacent spaces so we get little pools. Odds of spread decreases further from source, to keep them from growing too large
var newWater

for (var hOffset = -1; hOffset <= 1; hOffset += 2)
{
	for (var vOffset = -1; vOffset <= 1; vOffset += 2)
	{
		var roll = random_range(1, 10) - distFromSource
		if (roll >= 7)
		{
			newWater = instance_create_layer(x + sprite_width * hOffset, y + sprite_height * vOffset, "Water", oWater)
			with (newWater)
			{
				
			}
		}
	}
}