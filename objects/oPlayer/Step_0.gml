depth = -y

characterMovement(moveSpeed, sPlayerUp, sPlayerDown, sPlayerRight)

if (buttonCheck(BUTTON_TYPE.ATTACK, BUTTON_EVENT.HELD))
{
	// Do axe swing
}

if (global.dashUnlocked && buttonCheck(BUTTON_TYPE.DASH, BUTTON_EVENT.PRESSED))
{
	// Do dash
}