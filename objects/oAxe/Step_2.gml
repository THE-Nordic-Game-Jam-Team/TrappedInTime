if (instance_exists(oPlayer))
{
	x = oPlayer.x
	y = oPlayer.y - ifElse(oPlayer.sprite_index == sPlayerCutDown, 5, 8)
	depth = oPlayer.depth + ifElse(oPlayer.sprite_index == sPlayerCutUp, 1, -1)
	
	if (oPlayer.sprite_index == sPlayerRight || oPlayer.sprite_index == sPlayerCutRight)
	{
		swingDir = oPlayer.image_xscale
	}
	else
	{
		if (buttonCheck(BUTTON_TYPE.LEFT, BUTTON_EVENT.PRESSED))
		{
			swingDir = -1
		}
		if (buttonCheck(BUTTON_TYPE.RIGHT, BUTTON_EVENT.PRESSED))
		{
			swingDir = 1
		}
	}
	
	if (swingDir != image_xscale)
	{
		image_angle = (image_angle + 180 - 90 * sign(swingDir)) % 360
	}
	image_xscale = swingDir
	
	if (swingDir == 1)
	{
		image_angle -= 5
		if (image_angle < 10)
		{
			image_angle = 80 - 10 + image_angle
		}
	}
	else
	{
		image_angle += 5
		if (image_angle > 350)
		{
			image_angle = 280
		}
	}
}
else
{
	instance_destroy()
}