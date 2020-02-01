var padding = 2 // Pixel width of outline around sprite that will count as the player "behind" the tree
var spriteLeftX = x - sprite_get_xoffset(sprite_index) + sprite_get_bbox_left(sprite_index) - padding
var spriteRightX = x - sprite_get_xoffset(sprite_index) + sprite_get_bbox_right(sprite_index) + padding
var spriteTopY = y - sprite_get_yoffset(sprite_index) + sprite_get_bbox_top(sprite_index) - padding
var spriteBottomY = y - sprite_get_yoffset(sprite_index) + sprite_get_bbox_bottom(sprite_index) + padding

if (instance_exists(oPlayer) && oPlayer.depth > depth && collision_rectangle(spriteLeftX, spriteTopY, spriteRightX, spriteBottomY, oPlayer, false, true))
{
	image_alpha = 0.7
}
else
{
	image_alpha = 1
}