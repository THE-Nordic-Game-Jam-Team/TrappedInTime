// argument0 = instance
// argument1 = rarity
var tree = argument0
var rarity = argument1
var spriteVariant = irandom_range(1, 2)

tree.rarity = rarity

if (rarity == 2) // Max rarity tree
{
	tree.sprite_index = ifElse(spriteVariant == 1, sLegendaryTree1, sLegendaryTree2)
}
else if (rarity == 1) // Mid rarity tree
{
	tree.sprite_index = ifElse(spriteVariant == 1, sRareTree1, sRareTree2)
}
else
{
	tree.sprite_index = ifElse(spriteVariant == 1, sBlueTree1, sBlueTree2)
}