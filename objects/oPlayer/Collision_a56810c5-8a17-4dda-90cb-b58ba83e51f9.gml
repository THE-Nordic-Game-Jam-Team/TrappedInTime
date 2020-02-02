if (global.shieldHits > 0)
{
	global.shieldHits-=.5;
	audio_play_sound(sndShield,0,0)
}
else
{
	global.timeLeft-=1.5
	audio_play_sound(sndDamage,0,0)
}

var effectspawn=instance_create_layer(x,y,"Instances",oFX)
effectspawn.sprite_index=sFXPlayerDamage
		
with(other)
	instance_destroy()