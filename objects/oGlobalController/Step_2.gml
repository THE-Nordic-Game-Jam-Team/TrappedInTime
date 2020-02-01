if (global.timeLeft > 0)
{
	global.timeLeft = clamp(global.timeLeft - (1 / room_speed), 0, 20)
}