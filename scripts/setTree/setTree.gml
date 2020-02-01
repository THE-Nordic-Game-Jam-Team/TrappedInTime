// argument0 = instance
// argument1 = rarity
var tree = argument0
var rarity = argument1
var spriteVariant = irandom_range(1, 2)

tree.rarity = rarity

with (tree)
{
	if (rarity == 2) // Max rarity tree
	{
		sprite_index = ifElse(spriteVariant == 1, sLegendaryTree1, sLegendaryTree2)
		maxHp = TREE_TIER_3_HP
		hp = TREE_TIER_3_HP
	}
	else if (rarity == 1) // Mid rarity tree
	{
		sprite_index = ifElse(spriteVariant == 1, sRareTree1, sRareTree2)
		maxHp = TREE_TIER_2_HP
		hp = TREE_TIER_2_HP
	}
	else
	{
		sprite_index = ifElse(spriteVariant == 1, sBlueTree1, sBlueTree2)
		// Hp defaults are already set in the tree create event
	}
}