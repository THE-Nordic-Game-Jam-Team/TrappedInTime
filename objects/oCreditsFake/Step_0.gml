if (y < -400 || buttonCheck(BUTTON_TYPE.START, BUTTON_EVENT.PRESSED))
{
	audio_stop_all()
	room_goto(rmGame)
	newLoop()
}