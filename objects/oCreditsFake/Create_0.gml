/// @description Insert description here
// You can write your code in this editor
music=0
speed=.9
direction=90

audio_stop_all()
//show_message("F")
audio_play_sound(mscCreditsFake,0,0)

if global.loopNumber > 0
speed=5


instance_create_layer(x,y,"Instances",oFXGlitch)
instance_create_layer(x,y,"Instances",oFXNoise)