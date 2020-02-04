enum BUTTON_TYPE {
	LEFT,
	RIGHT,
	UP,
	DOWN,
	ATTACK,
	DASH,
	UPGRADE,
	START
}

enum BUTTON_EVENT {
	PRESSED,
	RELEASED,
	HELD
}

enum UPGRADE_TYPE {
	TEAR,
	AXE,
	MAGNET,
	MOVE_SPEED,
	SHIELD,
	TELEPORT
}

#macro TREE_TIER_1_HP 8
#macro TREE_TIER_2_HP 15
#macro TREE_TIER_3_HP 20
#macro HITS_PER_SHIELD 1
#macro MAX_NAME_LENGTH 12
#macro GP_DEADZONE 0.25

// set debug to true ONLY for the debug configuration
#macro DEBUG false
#macro debug:DEBUG true