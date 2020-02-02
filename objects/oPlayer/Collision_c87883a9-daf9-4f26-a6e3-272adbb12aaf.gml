if (other.speed < 1)
{
	global.wood[other.rarity] += 1
	with (other)
	{
		
		var effectspawn=instance_create_layer(x,y,"Instances",oFX)
		effectspawn.sprite_index=sFXPickupGet
		
		instance_destroy()
	}
}