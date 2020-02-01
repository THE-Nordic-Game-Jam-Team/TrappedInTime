draw_set_alpha(1)
draw_self()

if (upgradeLevel < maxUpgradeLevel)
{
	draw_sprite(sprite_index, upgradeLevel + 1, x, y)
}