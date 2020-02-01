draw_set_font(fntHUD)
draw_set_color(c_white)
draw_set_alpha(1)
draw_text(2, 0, global.playerName)

if (global.debug)
{
	draw_text(0, 288, "HDir: " + string(buttonCheck(BUTTON_TYPE.RIGHT, BUTTON_EVENT.HELD) - buttonCheck(BUTTON_TYPE.LEFT, BUTTON_EVENT.HELD)))
	draw_text(0, 304, "VDir: " + string(buttonCheck(BUTTON_TYPE.DOWN, BUTTON_EVENT.HELD) - buttonCheck(BUTTON_TYPE.UP, BUTTON_EVENT.HELD)))
}