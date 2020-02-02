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

#macro TREE_TIER_1_HP 10
#macro TREE_TIER_2_HP 20
#macro TREE_TIER_3_HP 40
#macro HITS_PER_SHIELD 1
#macro MAX_NAME_LENGTH 12