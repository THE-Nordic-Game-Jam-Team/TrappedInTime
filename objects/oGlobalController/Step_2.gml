
if room==rmGame
{
	if (global.countdown > 0) || global.win==true
	{
		global.countdown -= 1
		
		if buttonCheck(BUTTON_TYPE.START, BUTTON_EVENT.PRESSED)
			global.countdown =0
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