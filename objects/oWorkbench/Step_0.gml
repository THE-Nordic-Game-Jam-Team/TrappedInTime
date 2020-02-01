if (upgradeLevel < maxUpgradeLevel)
{
	costs = global.upgradeCosts[type, upgradeLevel + 1]
}
else
{
	costs = array_create(3, 0)
}

playerInRange = instance_exists(oPlayer) && distance_to_object(oPlayer) <= 25
if (playerInRange && buttonCheck(BUTTON_TYPE.UPGRADE, BUTTON_EVENT.PRESSED))
{
	if (global.wood[0] >= costs[0] && global.wood[1] >= costs[1] && global.wood[2] >= costs[2])
	{
		global.wood[0] -= costs[0]
		global.wood[1] -= costs[1]
		global.wood[2] -= costs[2]
		
		upgradeLevel++
		global.upgradeLevel[type] = upgradeLevel
	}
}