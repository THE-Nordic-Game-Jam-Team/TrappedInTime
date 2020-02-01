draw_set_alpha(1)
draw_self()

var costVal

if (upgradeLevel < maxUpgradeLevel)
{
	draw_sprite(sprite_index, upgradeLevel + 1, x, y)
	
	if (playerInRange)
	{
		draw_set_color(c_black)
		// Draw rectangle background based on number of resources we need to display
		var nonZeroCostsCount = ifElse(costs[0] > 0, 1, 0) + ifElse(costs[1] > 0, 1, 0) + ifElse(costs[2] > 0, 1, 0)
		draw_rectangle(x - 18, y - 50 - (12 * nonZeroCostsCount), x + 18, y - 49, false)
		
		draw_set_color(c_white)
		draw_set_halign(fa_left)
		draw_set_valign(fa_middle)
		draw_set_font(fntResources)
		var typesDrawn = 0
		for (var i = 2; i >= 0; i--)
		{
			costVal = costs[i]
			if (costVal > 0)
			{
				draw_sprite(sWood, i, x - 8, y - 55 - (12 * typesDrawn))
				draw_text(x + 2, y - 55 - (12 * typesDrawn), string(costVal))
			}
		}
	}
}