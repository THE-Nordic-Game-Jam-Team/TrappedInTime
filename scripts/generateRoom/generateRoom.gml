// Seed has to be a number, so convert it to one in this funky way. Using a string intentionally so that each character appends rather than does math
// This is more random than simply doing math because that will result in a lot of different names sharing the same seed
// However, longer names make an int that is still too big... so only use the first 6 chars,
// then just do math on top of that
var charOrd
var seed = ""
for(var i = 1; i <= string_length(global.playerName); i++)
{
	charOrd = string_ord_at(global.playerName, i)
	if (i <= 6)
	{
		seed = seed + string(charOrd)
	}
	else
	{
		seed = real(seed) + charOrd
	}
}

// Now make it an int because seeds need to be an int in GMS, and add the loop number
// so that it changes with each loop
seed = real(seed) + global.loopNumber

random_set_seed(seed)
show_debug_message("Made room with seed: " + string(seed))

generateTrees()
generateWater()