depth = -y - 30 // the origin on the tree is kinda weird for reasons... so just man-handle the depth so it looks prettier.
image_speed = 0
rarity = 0
maxHp = TREE_TIER_1_HP
hp = maxHp
hitCooldown = 0
hitCooldownMax = 14
healthbarDelay = 0

spritePadding = 2 // Pixel width of outline around sprite that will count as the player "behind" the tree
spriteLeftX = x - sprite_get_xoffset(sprite_index) + sprite_get_bbox_left(sprite_index) - spritePadding
spriteRightX = x - sprite_get_xoffset(sprite_index) + sprite_get_bbox_right(sprite_index) + spritePadding
spriteTopY = y - sprite_get_yoffset(sprite_index) + sprite_get_bbox_top(sprite_index) - spritePadding
spriteBottomY = y - sprite_get_yoffset(sprite_index) + sprite_get_bbox_bottom(sprite_index) + spritePadding