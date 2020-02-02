
if room==rmGame
{
	if (global.countdown > 0)
	{
		global.countdown -= 1
	}
	else
	{
		voidSpawn()

		global.timeLeft -= 1 / room_speed
		
		if (global.timeLeft <= 0)
		{
			scrDestroy(oVoid) //safety wipe

			room_goto(rmCreditsFake)
		}
	}
}