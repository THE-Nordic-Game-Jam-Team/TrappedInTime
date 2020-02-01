depth = -y
var swinging = (getUpgradeLevel(UPGRADE_TYPE.AXE) > 0 && buttonCheck(BUTTON_TYPE.ATTACK, BUTTON_EVENT.HELD))

characterMovement(moveSpeed, ifElse(swinging, sPlayerCutUp, sPlayerUp), ifElse(swinging, sPlayerCutDown, sPlayerDown), ifElse(swinging, sPlayerCutRight, sPlayerRight))

if (swinging)
{
	if (!instance_exists(oAxe))
	{
		var newAxe = instance_create_depth(x, y, 0, oAxe)
		newAxe.swingDir = ifElse(buttonCheck(BUTTON_TYPE.LEFT, BUTTON_EVENT.HELD), -1, 1)
		switch(sprite_index)
		{
			case sPlayerDown:
				sprite_index = sPlayerCutDown
				break
			case sPlayerUp:
				sprite_index = sPlayerCutUp
				break
			case sPlayerRight:
				sprite_index = sPlayerCutRight
				break
		}
	}
}
else
{
	with(oAxe)
	{
		instance_destroy()
	}
	switch(sprite_index)
	{
		case sPlayerCutDown:
			sprite_index = sPlayerDown
			break
		case sPlayerCutUp:
			sprite_index = sPlayerUp
			break
		case sPlayerCutRight:
			sprite_index = sPlayerRight
			break
	}
}

if (getUpgradeLevel(UPGRADE_TYPE.TELEPORT) > 0 && buttonCheck(BUTTON_TYPE.DASH, BUTTON_EVENT.PRESSED))
{
	// Do dash
}