/// @description Insert description here
// You can write your code in this editor

//if shield
//reduceshield
//else
global.timeLeft-=1.5

var effectspawn=instance_create_layer(x,y,"Instances",oFX)
effectspawn.sprite_index=sFXPlayerDamage
		
with(other)
	instance_destroy()