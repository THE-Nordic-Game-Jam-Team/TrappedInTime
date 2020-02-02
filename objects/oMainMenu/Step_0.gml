var nameLength = string_length(global.playerName)

if (backspaceCooldown >= 0)
{
	backspaceCooldown--
}
if (keyboard_check_released(vk_backspace))
{
	backspaceCooldown = -1
}

if (nameLength > 0)
{
	if (buttonCheck(BUTTON_TYPE.START, BUTTON_EVENT.PRESSED))
	{
		room_goto(rmGame)
	}
	else if (keyboard_check(vk_backspace) && backspaceCooldown <= 0)
	{
		global.playerName = string_copy(global.playerName, 1, nameLength - 1)
		// Holding backspace will delete subsequent characters much quicker than the first one
		backspaceCooldown = ifElse(backspaceCooldown == 0, room_speed / 12, room_speed / 3)
	}
}

if (clipboardUsed == true && (keyboard_check_released(vk_control) || keyboard_check_released(ord("V"))))
{
	clipboardUsed = false
}

if (keyboard_check(vk_control) && keyboard_check(ord("V")) && clipboardUsed == false)
{
	// Paste from the clipboard into the keyboard_string so that it can be added to the name
	keyboard_string = clipboard_get_text()
	clipboardUsed = true
}

if (nameLength <= MAX_NAME_LENGTH && string_length(keyboard_string) > 0)
{
	global.playerName += string_copy(keyboard_string, 1, MAX_NAME_LENGTH - nameLength)
	keyboard_string = ""
}