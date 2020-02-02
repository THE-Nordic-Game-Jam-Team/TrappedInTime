if (upgradeLevel < maxUpgradeLevel)
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