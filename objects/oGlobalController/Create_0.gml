global.debug = true

global.camX = 0
global.camY = 0

global.timeLeft = 20
global.loopNumber = 0

// Pickups and upgrades
global.wood = array_create(3, ifElse(global.debug, 50, 0))
// MUST match size of enum in constants
global.upgradeLevel = array_create(6, 0)
global.upgradeLevel[UPGRADE_TYPE.AXE] = 1 // Initialize axe to 1, because 0 = no axe and we want to start with it
global.upgradeCosts = setupUpgradeCosts()

// TODO: Implement name selection. Should have a 12 character limit so the generated seed does not cause an integer overflow
global.playerName = "Cupcakes"

randomise() // Seed set based on player name in generateRoom script

timeRate=1

voidSpawnRateMax=60
voidSpawnRate=0
