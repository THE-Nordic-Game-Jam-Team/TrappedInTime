global.debug = true

global.camX = 0
global.camY = 0

global.dashUnlocked = false
global.axeLevel = ifElse(global.debug, 3, 0) // 0 = not unlocked
global.timeLeft = 20

// TODO: Implement name selection. Should have a 12 character limit so the generated seed does not cause an integer overflow
global.playerName = "Cupcakes"

// Seed has to be a number, so convert it to one in this funky way. Using a string intentionally so that each character appends rather than does math
// This is more random than simply doing math because that will result in a lot of different names sharing the same seed
global.seed = ""
for(var i = 1; i <= string_length(global.playerName); i++)
{
	global.seed = global.seed + string(string_ord_at(global.playerName, i))
}
show_debug_message("SEED: " + global.seed)

random_set_seed(real(global.seed))