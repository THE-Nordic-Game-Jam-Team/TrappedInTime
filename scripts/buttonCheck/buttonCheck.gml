// argument0 = button type
// argument1 = button event (pressed, released, held)
var type = argument0
var event = argument1

var keyboardBtn

switch(type)
{
	case BUTTON_TYPE.LEFT:
		keyboardBtn = ord("A")
		break
	case BUTTON_TYPE.RIGHT:
		keyboardBtn = ord("D")
		break
	case BUTTON_TYPE.UP:
		keyboardBtn = ord("W")
		break
	case BUTTON_TYPE.DOWN:
		keyboardBtn = ord("S")
		break
	case BUTTON_TYPE.ATTACK:
		keyboardBtn = vk_space
		break
}

switch(event)
{
	case BUTTON_EVENT.PRESSED:
		return ifElse(keyboard_check_pressed(keyboardBtn), 1, 0)
	case BUTTON_EVENT.RELEASED:
		return ifElse(keyboard_check_released(keyboardBtn), 1, 0)
	case BUTTON_EVENT.HELD:
		return ifElse(keyboard_check(keyboardBtn), 1, 0)
	default:
		return 0
}