// argument0 = button type
// argument1 = button event (pressed, released, held)
var type = argument0
var event = argument1

var keyboardBtn1, keyboardBtn2, gamepadBtn1, gamepadBtn2, gamepadAxis

switch(type)
{
	case BUTTON_TYPE.LEFT:
		keyboardBtn1 = ord("A")
		keyboardBtn2 = vk_left
		gamepadAxis = 0
		gamepadBtn1 = ifElse(os_type == os_switch, 12, 2)
		gamepadBtn2 = ifElse(os_type == os_switch, 22, 2)
		break
	case BUTTON_TYPE.RIGHT:
		keyboardBtn1 = ord("D")
		keyboardBtn2 = vk_right
		gamepadAxis = 0
		gamepadBtn1 = ifElse(os_type == os_switch, 13, 3)
		gamepadBtn2 = ifElse(os_type == os_switch, 20, 3)
		break
	case BUTTON_TYPE.UP:
		keyboardBtn1 = ord("W")
		keyboardBtn2 = vk_up
		gamepadAxis = 1
		gamepadBtn1 = ifElse(os_type == os_switch, 14, 0)
		gamepadBtn2 = ifElse(os_type == os_switch, 21, 0)
		break
	case BUTTON_TYPE.DOWN:
		keyboardBtn1 = ord("S")
		keyboardBtn2 = vk_down
		gamepadAxis = 1
		gamepadBtn1 = ifElse(os_type == os_switch, 15, 1)
		gamepadBtn2 = ifElse(os_type == os_switch, 23, 1)
		break
	case BUTTON_TYPE.ATTACK:
		keyboardBtn1 = vk_space
		keyboardBtn2 = ord("Z")
		gamepadBtn1 = ifElse(os_type == os_switch, 1, 12)
		gamepadBtn2 = ifElse(os_type == os_switch, 9, 11)
		break
	case BUTTON_TYPE.DASH:
		keyboardBtn1 = vk_shift
		keyboardBtn2 = ord("X")
		gamepadBtn1 = ifElse(os_type == os_switch, 3, 13)
		gamepadBtn2 = ifElse(os_type == os_switch, 0, 14)
		break
	case BUTTON_TYPE.UPGRADE:
		keyboardBtn1 = ord("E")
		keyboardBtn2 = ord("C")
		gamepadBtn1 = ifElse(os_type == os_switch, 2, 15)
		gamepadBtn2 = ifElse(os_type == os_switch, 7, 9)
		break
	case BUTTON_TYPE.START:
		keyboardBtn1 = vk_enter
		keyboardBtn2 = vk_enter
		gamepadBtn1 = ifElse(os_type == os_switch, 10, 4)
		gamepadBtn2 = ifElse(os_type == os_switch, 11, 5)
		break
}

switch(event)
{
	case BUTTON_EVENT.PRESSED:
		if (keyboard_check_pressed(keyboardBtn1) || keyboard_check_pressed(keyboardBtn2))
		{
			return 1
		}
		else if (global.gp != undefined)
		{
			return ifElse(gamepad_button_check_pressed(global.gp, gamepadBtn1) || gamepad_button_check_pressed(global.gp, gamepadBtn2), 1, 0)
		}
		return 0
	case BUTTON_EVENT.RELEASED:
		if (keyboard_check_released(keyboardBtn1) || keyboard_check_released(keyboardBtn2))
		{
			return 1
		}
		else if (global.gp != undefined)
		{
			return ifElse(gamepad_button_check_released(global.gp, gamepadBtn1) || gamepad_button_check_released(global.gp, gamepadBtn2), 1, 0)
		}
		return 0
	case BUTTON_EVENT.HELD:
		if (keyboard_check(keyboardBtn1) || keyboard_check(keyboardBtn2))
		{
			return 1
		}
		else if (global.gp != undefined)
		{
			switch(type)
			{
				case BUTTON_TYPE.LEFT:
					return ifElse(gamepad_axis_value(global.gp, gamepadAxis) <= -GP_DEADZONE || gamepad_button_check(global.gp, gamepadBtn1) || gamepad_button_check(global.gp, gamepadBtn2), 1, 0)
				case BUTTON_TYPE.DOWN:
					if (os_type == os_switch)
						return ifElse(gamepad_axis_value(global.gp, gamepadAxis) >= GP_DEADZONE || gamepad_button_check(global.gp, gamepadBtn1) || gamepad_button_check(global.gp, gamepadBtn2), 1, 0)
					else
						return ifElse(gamepad_axis_value(global.gp, gamepadAxis) <= -GP_DEADZONE || gamepad_button_check(global.gp, gamepadBtn1) || gamepad_button_check(global.gp, gamepadBtn2), 1, 0)
				case BUTTON_TYPE.RIGHT:
					return ifElse(gamepad_axis_value(global.gp, gamepadAxis) >= GP_DEADZONE || gamepad_button_check(global.gp, gamepadBtn1) || gamepad_button_check(global.gp, gamepadBtn2), 1, 0)
				case BUTTON_TYPE.UP:
					if (os_type == os_switch)
						return ifElse(gamepad_axis_value(global.gp, gamepadAxis) <= -GP_DEADZONE || gamepad_button_check(global.gp, gamepadBtn1) || gamepad_button_check(global.gp, gamepadBtn2), 1, 0)
					else
						return ifElse(gamepad_axis_value(global.gp, gamepadAxis) >= GP_DEADZONE || gamepad_button_check(global.gp, gamepadBtn1) || gamepad_button_check(global.gp, gamepadBtn2), 1, 0)
				default:
					return ifElse(gamepad_button_check(global.gp, gamepadBtn1) || gamepad_button_check(global.gp, gamepadBtn2), 1, 0)
			}
		}
		return 0
	default:
		return 0
}