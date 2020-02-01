draw_set_font(fntHUD)
draw_set_color(c_white)
draw_set_alpha(1)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

drawTextWithOutline(4, 4, global.playerName)

// Round to the nearest 100th of a second for display purposes
// Also add the .00 on whole numbers for consistency
var displayTime = global.timeLeft
displayTime = round(displayTime * 100) * 0.01 // Do multiplication instead of divison because PCs don't like division by zero :D
displayTime = ifElse (displayTime == round(displayTime), string(displayTime) + ".00", string(displayTime))

draw_set_halign(fa_middle)
drawTextWithOutline(viewport_width / 2, 8, "Time\r\n" + displayTime)

draw_set_halign(fa_right)
drawTextWithOutline(viewport_width - 4, 4, "Loop " + string(global.loopNumber + 1))

if (global.debug)
{
	draw_set_halign(fa_left)
	draw_set_valign(fa_bottom)
	drawTextWithOutline(4, viewport_height - 24, "HDir: " + string(buttonCheck(BUTTON_TYPE.RIGHT, BUTTON_EVENT.HELD) - buttonCheck(BUTTON_TYPE.LEFT, BUTTON_EVENT.HELD)))
	drawTextWithOutline(4, viewport_height - 4, "VDir: " + string(buttonCheck(BUTTON_TYPE.DOWN, BUTTON_EVENT.HELD) - buttonCheck(BUTTON_TYPE.UP, BUTTON_EVENT.HELD)))
}