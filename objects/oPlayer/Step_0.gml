depth = -y

characterMovement(moveSpeed, sPlayerUp, sPlayerDown, sPlayerRight)

if (global.axeLevel > 0 && buttonCheck(BUTTON_TYPE.ATTACK, BUTTON_EVENT.HELD))
{
	if (!instance_exists(oAxe))
	{
		instance_create_depth(x, y, 0, oAxe)
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