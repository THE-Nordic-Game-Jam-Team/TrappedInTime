/// @description 


draw_self()

gpu_set_blendmode(bm_add)

if global.shieldHits >= .5
draw_sprite_ext(sFXShield0,shieldImage0,x,y+playerCenter,1+(shift),1+(shift),0,c_white,.5)

if global.shieldHits >= 1.5
draw_sprite_ext(sFXShield1,shieldImage1,x,y+playerCenter,1.25+(shift),1.25+(shift),0,c_white,.5)

if global.shieldHits >= 2.5
draw_sprite_ext(sFXShield2,shieldImage2,x,y+playerCenter,1.5+(shift),1.5+(shift),0,c_white,.5)

gpu_set_blendmode(bm_normal)