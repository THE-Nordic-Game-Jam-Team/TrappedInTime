/// @description 

draw_set_alpha(1)
draw_set_color(c_white)
image_blend = -1
image_alpha = 1
draw_self()

gpu_set_blendmode(bm_add)

if global.shieldHits > 0
draw_sprite_ext(sFXShield0,shieldImage0,x,y+playerCenter,1+(shift),1+(shift),0,c_white,.5)

if global.shieldHits > 1
draw_sprite_ext(sFXShield1,shieldImage1,x,y+playerCenter,1.25+(shift),1.25+(shift),0,c_white,.5)

if global.shieldHits > 2
draw_sprite_ext(sFXShield2,shieldImage2,x,y+playerCenter,1.5+(shift),1.5+(shift),0,c_white,.5)



gpu_set_blendmode(bm_normal)

if instance_exists(oTimeTear)
	if distance_to_object(oTimeTear)>280
		draw_sprite_ext(sUITearNav,0,x,y+playerCenter,1+(shift),1+(shift),tearNavRot,c_white,1)