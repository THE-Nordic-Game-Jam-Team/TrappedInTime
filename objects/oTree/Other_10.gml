// Initialize position-dependent variables. This is a user event so we can run it again if the initial position is invalid
depth = -y - 30
spritePadding = 2 // Pixel width of outline around sprite that will count as the player "behind" the tree
spriteLeftX = x - sprite_get_xoffset(sprite_index) + sprite_get_bbox_left(sprite_index) - spritePadding
spriteRightX = x - sprite_get_xoffset(sprite_index) + sprite_get_bbox_right(sprite_index) + spritePadding
spriteTopY = y - sprite_get_yoffset(sprite_index) + sprite_get_bbox_top(sprite_index) - spritePadding
spriteBottomY = y - sprite_get_yoffset(sprite_index) + sprite_get_bbox_bottom(sprite_index) + spritePadding