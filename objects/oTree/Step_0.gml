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
if (hp > 0 && hitCooldown = 0 && instance_exists(oAxe) && collision_rectangle(spriteLeftX, spriteTopY, spriteRightX, spriteBottomY, oAxe, false, true))
{
	hp = max(hp - getUpgradeLevel(UPGRADE_TYPE.AXE), 0)
	if (hp <= 0)
	{
		image_index = 1
		var woodSpawns = irandom_range(4, 8)
		repeat(woodSpawns)
		{
			var newWood = instance_create_depth(x, y, 0, oWood)
			newWood.parentTree = self
			newWood.rarity = rarity
		}
		
		var effectspawn=instance_create_layer(x,y,"Instances",oFX)
		effectspawn.sprite_index=sFXTreeCut
	}
	else
	{
		var effectspawn=instance_create_layer(x,y,"Instances",oFX)
		effectspawn.sprite_index=sFXTreeHit
		
		var debrisSpawns = irandom_range(4, 8)
		repeat(debrisSpawns)
		{
		var newDebris = instance_create_depth(x, y, 0, oDebris)
		newDebris.rarity = rarity
		}
			
		hitCooldown = hitCooldownMax//room_speed / 2
	}
}