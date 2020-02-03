draw_set_alpha(1)
draw_set_color(c_white)
image_blend = -1
image_alpha = 1
draw_self()

if (upgradeLevel < maxUpgradeLevel)
{
	draw_sprite(sprite_index, upgradeLevel + 1, x, y)
	
	if (playerInRange)
	{
		drawUpgradeInfo(costs, y - 49, y + 6)
		event_user(0)
	}
}