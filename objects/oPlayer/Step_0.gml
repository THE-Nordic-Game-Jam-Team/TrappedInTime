depth = -y
if (global.countdown > 0) 
{
	// Player is unable to act during countdown
	sprite_index = sPlayerPhaseIn
	image_speed = 1
	exit
}
else if (sprite_index = sPlayerPhaseIn)
{
	// This should execute right after countdown finishes and never again
	sprite_index = sPlayerDown
	image_speed = 0
}

if (global.win)
	exit


var swinging = (getUpgradeLevel(UPGRADE_TYPE.AXE) > 0 && buttonCheck(BUTTON_TYPE.ATTACK, BUTTON_EVENT.HELD))

if (global.dashCooldown > 0)
{
	global.dashCooldown -= 1
}

characterMovement(baseMoveSpeed, ifElse(swinging, sPlayerCutUp, sPlayerUp), ifElse(swinging, sPlayerCutDown, sPlayerDown), ifElse(swinging, sPlayerCutRight, sPlayerRight))

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

t = (t + increment) mod 360;
shift = amplitude * dsin(t);

shieldImage0+=.5
shieldImage1+=1.1
shieldImage2+=1.5

if shieldImage0>=10
	shieldImage0=0
	
if shieldImage1>=10
	shieldImage1=0
	
if shieldImage2>=10
	shieldImage2=0
	
	
//wood custom collision
var woodcol=collision_circle(x,y-4,16,oWood,0,0)

if woodcol
{
	if (woodcol.speed < 1)
	{
		global.wood[woodcol.rarity] += 1
		with (woodcol)
		{
			var effectspawn=instance_create_layer(x,y,"Instances",oFX)
			effectspawn.sprite_index=sFXPickupGet
		
			audio_play_sound(sndPickup,0,0)
			instance_destroy()
		}
	}	
}