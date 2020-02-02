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
global.shieldHits = 0

global.playerName = ""
global.countdown = room_speed * 3 // This will start counting down when the game begins

randomise() // Seed set based on player name in generateRoom script

timeRate=1

voidSpawnRateMax=60
voidSpawnRate=0
