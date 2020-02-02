// argument0 = button type
// argument1 = button event (pressed, released, held)
var type = argument0
var event = argument1

var keyboardBtn1, keyboardBtn2

switch(type)
{
	case BUTTON_TYPE.LEFT:
		keyboardBtn1 = ord("A")
		keyboardBtn2 = vk_left
		break
	case BUTTON_TYPE.RIGHT:
		keyboardBtn1 = ord("D")
		keyboardBtn2 = vk_right
		break
	case BUTTON_TYPE.UP:
		keyboardBtn1 = ord("W")
		keyboardBtn2 = vk_up
		break
	case BUTTON_TYPE.DOWN:
		keyboardBtn1 = ord("S")
		keyboardBtn2 = vk_down
		break
	case BUTTON_TYPE.ATTACK:
		keyboardBtn1 = vk_space
		keyboardBtn2 = ord("Z")
		break
	case BUTTON_TYPE.DASH:
		keyboardBtn1 = vk_shift
		keyboardBtn2 = ord("X")
		break
	case BUTTON_TYPE.UPGRADE:
		keyboardBtn1 = ord("E")
		keyboardBtn2 = ord("C")
		break
	case BUTTON_TYPE.START:
		keyboardBtn1 = vk_enter
		keyboardBtn2 = vk_enter
		break
}

switch(event)
{
	case BUTTON_EVENT.PRESSED:
		return ifElse(keyboard_check_pressed(keyboardBtn1) || keyboard_check_pressed(keyboardBtn2), 1, 0)
	case BUTTON_EVENT.RELEASED:
		return ifElse(keyboard_check_released(keyboardBtn1) || keyboard_check_released(keyboardBtn2), 1, 0)
	case BUTTON_EVENT.HELD:
		return ifElse(keyboard_check(keyboardBtn1) || keyboard_check(keyboardBtn2), 1, 0)
	default:
		return 0
}