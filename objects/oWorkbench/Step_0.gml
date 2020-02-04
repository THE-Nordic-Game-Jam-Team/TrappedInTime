if type == UPGRADE_TYPE.AXE
{
	if (upgradeLevel < maxUpgradeLevel)
	&& upgradeLevel <= global.upgradeLevel[UPGRADE_TYPE.TEAR]+1
	canUpgrade=true
	else
	canUpgrade=false
}
else
{
	if (upgradeLevel < maxUpgradeLevel)
	&& upgradeLevel <= global.upgradeLevel[UPGRADE_TYPE.TEAR]
	canUpgrade=true
	else
	canUpgrade=false
}

if canUpgrade
{
	costs = global.upgradeCosts[type, upgradeLevel + 1]
	playerInRange = instance_exists(oPlayer) && distance_to_object(oPlayer) <= 25
	if (playerInRange && buttonCheck(BUTTON_TYPE.UPGRADE, BUTTON_EVENT.PRESSED))
	{
		var success = purchaseUpgrade(costs, type)
		if (success)
		{
			upgradeLevel++
			event_user(1)
			audio_play_sound(sndUpgrade,0,0)
		}
	}
}
else
{
	costs = array_create(3, 0)
}