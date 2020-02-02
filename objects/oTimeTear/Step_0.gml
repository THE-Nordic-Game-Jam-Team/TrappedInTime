if (upgradeLevel < maxUpgradeLevel)
{
	costs = global.upgradeCosts[type, upgradeLevel + 1]
	playerInRange = instance_exists(oPlayer) && distance_to_object(oPlayer) <= 10
	if (playerInRange && buttonCheck(BUTTON_TYPE.UPGRADE, BUTTON_EVENT.PRESSED))
	{
		var success = purchaseUpgrade(costs, type)
		if (success)
		{
			upgradeLevel++
			if (upgradeLevel >= maxUpgradeLevel)
			{
				// YOU WON DA GAME. TAKE ME TO DA REAL CREDITS
			}
		}
	}
}
else
{
	costs = array_create(3, 0)
}

// Visual effects stuff below
image_speed = .3 + upgradeLevel

xScaleRNG = upgradeLevel * 0.05
yScaleRNG = upgradeLevel * 0.25

color=make_color_hsv(random(255),random(255),random(255))
color2=c_white

if upgradeLevel > 3
{
	color=make_color_hsv(random(255),random(150),random(255))
}
if upgradeLevel >= 7
{
	if irandom(2)==0
	{
		color=c_black
	}
	if irandom(1.25)==0
	{
		color2=c_black
	}
}