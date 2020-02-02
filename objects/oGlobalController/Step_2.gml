
if room==rmGame
{
	voidSpawn()
	
	
	global.timeLeft -= timeRate / room_speed

	if global.timeLeft<10
	{
	timeRate=.9	
	}
	if global.timeLeft<5
	{
	timeRate=.75
	}
	if global.timeLeft<3
	{
	timeRate=.5
	}

	if (global.timeLeft <= 0)
	{
		scrDestroy(oVoid) //safety wipe
		
		room_goto(rmCreditsFake)
		//newLoop()
	}
}