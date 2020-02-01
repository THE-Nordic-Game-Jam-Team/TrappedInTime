var padding = 2 // Pixel width of outline around sprite that will count as the player "behind" the tree
var spriteLeftX = x - sprite_get_xoffset(sprite_index) + sprite_get_bbox_left(sprite_index) - padding
var spriteRightX = x - sprite_get_xoffset(sprite_index) + sprite_get_bbox_right(sprite_index) + padding
var spriteTopY = y - sprite_get_yoffset(sprite_index) + sprite_get_bbox_top(sprite_index) - padding
var spriteBottomY = y - sprite_get_yoffset(sprite_index) + sprite_get_bbox_bottom(sprite_index) + padding

if (instance_exists(oPlayer) && oPlayer.depth > depth && hp > 0 && collision_rectangle(spriteLeftX, spriteTopY, spriteRightX, spriteBottomY, oPlayer, false, true))
{
	image_alpha = 0.7
}
else
{
	image_alpha = 1
}

if (hitCooldown > 0)
{
	hitCooldown--
}

// Hit cooldown so it doesn't take damage multiple times from one swing
if (hitCooldown = 0 && instance_exists(oAxe) && collision_rectangle(spriteLeftX, spriteTopY, spriteRightX, spriteBottomY, oAxe, false, true))
{
	hp--
	if (hp <= 0)
	{
		image_index = 1
		// TODO: Spawn wood
	}
	else
	{
		hitCooldown = room_speed / 2
	}
}