enum BUTTON_TYPE {
	LEFT,
	RIGHT,
	UP,
	DOWN,
	ATTACK
}

enum BUTTON_EVENT {
	PRESSED,
	RELEASED,
	HELD
}

global.debug = false

global.camX = 0
global.camY = 0

// TODO: Implement seed-based randomization
randomise()