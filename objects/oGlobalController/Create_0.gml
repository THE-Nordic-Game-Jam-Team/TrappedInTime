global.debug = false

global.camX = 0
global.camY = 0

global.timeLeft = 20
global.loopNumber = 0

// Pickups and upgrades
global.wood = array_create(3, ifElse(global.debug, 999999, 0))
// MUST match size of enum in constants
global.upgradeLevel = array_create(6, 0)
global.upgradeLevel[UPGRADE_TYPE.AXE] = 1 // Initialize axe to 1, because 0 = no axe and we want to start with it
global.upgradeCosts = setupUpgradeCosts()
global.shieldHits = 0


randomise() // Seed set based on player name in generateRoom script

global.playerName = ifElse(os_type == os_switch, string(irandom_range(1000, 999999999)), "")
global.countdown = room_speed * 3 // This will start counting down when the game begins
global.gp = undefined
global.win = false
global.lastGpButton = -1


voidSpawnRateMax=60
voidSpawnRate=0

difficultyrating=0;
difficultyratingMax=8//10 //max limit spawn rate we alow for sanity sake


musicval=0 //stage
musicset=0 //set a or b