// argument0 = instance
// argument1 = rarity
var tree = argument0
var rarity = argument1

tree.rarity = rarity

// TODO: randomize variants
if (rarity == 2) // Max rarity tree
{
	tree.sprite_index = sBlueTree2 // temporary since I don't have a better sprite yet
}
else if (rarity == 1) // Mid rarity tree
{
	tree.sprite_index = sBlueTree2 // temporary since I don't have a better sprite yet
}
else
{
	tree.sprite_index = sBlueTree1
}