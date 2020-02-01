draw_set_font(fntHUD)
draw_set_color(c_white)
draw_set_alpha(1)
draw_set_halign(fa_left)

draw_text(2, 2, global.playerName)

// Round to the nearest 100th of a second for display purposes
// Also add the .00 on whole numbers for consistency
var displayTime = global.timeLeft
displayTime = round(displayTime * 100) * 0.01 // Do multiplication instead of divison because PCs don't like division by zero :D
displayTime = ifElse (displayTime == round(displayTime), string(displayTime + ".00"), string(displayTime))

draw_set_halign(fa_middle)
draw_text(camera_get_view_width(camera) / 2, 8, "Time\r\n" + displayTime)

draw_set_halign(fa_right)
draw_text(camera_get_view_width(camera) - 2, 2, "Loop " + string(global.loopNumber + 1))

if (global.debug)
{
	draw_set_halign(fa_left)
	draw_text(0, 288, "HDir: " + string(buttonCheck(BUTTON_TYPE.RIGHT, BUTTON_EVENT.HELD) - buttonCheck(BUTTON_TYPE.LEFT, BUTTON_EVENT.HELD)))
	draw_text(0, 304, "VDir: " + string(buttonCheck(BUTTON_TYPE.DOWN, BUTTON_EVENT.HELD) - buttonCheck(BUTTON_TYPE.UP, BUTTON_EVENT.HELD)))
}