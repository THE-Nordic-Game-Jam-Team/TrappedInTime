if (y + sprite_height < 400)
{
	speed=0
	//audio_stop_all()
	if !audio_is_playing(mscCreditsTrue)
	{
		game_restart()
	}
}