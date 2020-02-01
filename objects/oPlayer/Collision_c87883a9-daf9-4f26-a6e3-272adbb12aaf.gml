if (other.speed < 1)
{
	global.wood[other.rarity] += 1
	with (other)
	{
		instance_destroy()
	}
}