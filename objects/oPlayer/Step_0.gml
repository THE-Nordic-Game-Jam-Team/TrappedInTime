depth = -y

characterMovement(moveSpeed, sPlayerUp, sPlayerDown, sPlayerRight)

if (global.axeLevel > 0 && buttonCheck(BUTTON_TYPE.ATTACK, BUTTON_EVENT.HELD))
{
	if (!instance_exists(oAxe))
	{
		var newAxe = instance_create_depth(x, y, 0, oAxe)
		newAxe.swingDir = ifElse(buttonCheck(BUTTON_TYPE.LEFT, BUTTON_EVENT.HELD), -1, 1)
	}
}
else
{
	with(oAxe)
	{
		instance_destroy()
	}
}

if (global.dashUnlocked && buttonCheck(BUTTON_TYPE.DASH, BUTTON_EVENT.PRESSED))
{
	// Do dash
}