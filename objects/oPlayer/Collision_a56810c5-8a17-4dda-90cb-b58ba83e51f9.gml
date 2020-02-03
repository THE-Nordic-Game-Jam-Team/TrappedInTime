if (global.shieldHits > 0)
{
	global.shieldHits-=.35//.5;
	audio_play_sound(sndShield,0,0)
}
else
{
	global.timeLeft-=1.1//1.5
	audio_play_sound(sndDamage,0,0)
	
	if instance_exists(oHUD)
		oHUD.damageDuration=oHUD.damageDurationMax
}

var effectspawn=instance_create_layer(x,y,"Instances",oFX)
effectspawn.sprite_index=sFXPlayerDamage
		
with(other)
	instance_destroy()