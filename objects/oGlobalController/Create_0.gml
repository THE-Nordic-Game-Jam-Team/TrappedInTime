global.debug = true

global.camX = 0
global.camY = 0

global.timeLeft = 20
global.loopNumber = 0

// Pickups and upgrades
global.wood = array_create(3, 0)
global.axeLevel = 1 // 0 = no axe. not in use
global.teleportLevel = 0
global.shieldLevel = 0
global.moveSpeedLevel = 0
global.magnetLevel = 0
global.upgradeCosts = setupUpgradeCosts()

// TODO: Implement name selection. Should have a 12 character limit so the generated seed does not cause an integer overflow
global.playerName = "Cupcakes"

randomise() // Seed set based on player name in generateRoom script