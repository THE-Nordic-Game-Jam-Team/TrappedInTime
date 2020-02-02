// If selected gamepad is disconnected, reset it
if (global.gp != undefined && !gamepad_is_connected(global.gp))
{
	global.gp = undefined
}

// search through all available gamepads
for (var i = 0; i < gamepad_get_device_count(); i++)
{
	// only care about connected ones
	if(gamepad_is_connected(i))
	{
		// If no gamepad is selected, use the first connected one we find
		if (global.gp == undefined)
		{
			global.gp = i
		}
		
		// If any button is pressed, set new gamepad id to that one even if we already had one previously
		for (var j = 0; j < gamepad_button_count(i); j++)
		{
			if (gamepad_button_check(i, j))
				global.gp = i
		}
		for (var k = 0; k < gamepad_axis_count(i); k++)
		{
			if (abs(gamepad_axis_value(i, k)) > GP_DEADZONE)
				global.gp = i
		}
	}
}