/// @description Insert description here
// You can write your code in this editor
depth=-99999999
image_speed=1
image_alpha=4
color=choose(c_red,c_black,c_yellow)

camera = view_get_camera(0)
camerax = camera_get_view_x(camera)
cameray = camera_get_view_y(camera)

audio_play_sound(sndGlitch,0,0)