global.loopNumber++
global.timeLeft = 20
global.wood = array_create(3, ifElse(DEBUG, 50, 0))
global.shieldHits = HITS_PER_SHIELD * getUpgradeLevel(UPGRADE_TYPE.SHIELD)