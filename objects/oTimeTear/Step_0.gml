if (upgradeLevel < maxUpgradeLevel)
{
	costs = global.upgradeCosts[type, upgradeLevel + 1]
	playerInRange = instance_exists(oPlayer) && distance_to_object(oPlayer) <= 10
	if (playerInRange && buttonCheck(BUTTON_TYPE.UPGRADE, BUTTON_EVENT.PRESSED))
	{
		var success = purchaseUpgrade(costs, type)
		if (success)
		{
			audio_play_sound(sndUpgradeTime,0,0)
			upgradeLevel++
			if (upgradeLevel >= maxUpgradeLevel)
			{
				if !instance_exists(oFade)
				{
					var fadeobj=instance_create_depth(x,y,-9999999999999,oFade)
					
					fadeobj.targetRoom=rmCreditsReal
				}
				global.win=true
			}
		}
	}
}
else
{
	costs = array_create(3, 0)
}

if global.win
{
	color=c_white
	color2=c_white
	image_speed = 1
	xScaleRNG = 0
	yScaleRNG = 0
	
	image_yscale-=.005
	if image_yscale<=0
	image_yscale=0
}
else
{
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

}
