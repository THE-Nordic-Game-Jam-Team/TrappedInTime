if (global.win && instance_exists(oFade))
{
	exit
}

draw_set_font(fntHUD)
draw_set_color(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

drawTextWithOutline(4, 4, global.playerName)

draw_set_valign(fa_middle)
draw_sprite_ext(sWood, 0, 22, 48, 2, 2, 0, c_white, 1)
drawTextWithOutline(44, 48, string(global.wood[0]))
draw_sprite_ext(sWood, 1, 22, 80, 2, 2, 0, c_white, 1)
drawTextWithOutline(44, 80, string(global.wood[1]))
draw_sprite_ext(sWood, 2, 22, 112, 2, 2, 0, c_white, 1)
drawTextWithOutline(44, 112, string(global.wood[2]))

// Round to the nearest 100th of a second for display purposes
// Also add the .00 on whole numbers for consistency
var displayTime = global.timeLeft
displayTime = round(displayTime * 100) * 0.01 // Do multiplication instead of divison because PCs don't like division by zero :D
displayTime = ifElse (displayTime == round(displayTime), string(displayTime) + ".00", string(displayTime))

draw_set_valign(fa_top)
draw_set_halign(fa_middle)
if damageDuration>0
{
	drawTextWithOutlineCustomColor(viewport_width / 2, 8, "Time\r\n" + displayTime,c_white,c_red)
	if irandom(2)==0
	drawTextWithOutlineCustomColor(viewport_width / 2, 8, "Time\r\n" + displayTime,c_red,c_black)
}
else
	drawTextWithOutline(viewport_width / 2, 8, "Time\r\n" + displayTime)

draw_set_halign(fa_right)
drawTextWithOutline(viewport_width - 4, 4, "Loop " + string(global.loopNumber + 1))

draw_set_halign(fa_left)
draw_set_valign(fa_bottom)
if (getUpgradeLevel(UPGRADE_TYPE.AXE) > 0)
{
	draw_sprite_ext(sAxeIcons, getUpgradeLevel(UPGRADE_TYPE.AXE)-1, 4, viewport_height - 4, 2, 2, 0, c_white, 1)
}
if (getUpgradeLevel(UPGRADE_TYPE.TELEPORT) > 0)
{
	draw_sprite_ext(sTeleportIcons, getUpgradeLevel(UPGRADE_TYPE.TELEPORT)-1, 40, viewport_height - 4, 2, 2, 0, c_white, ifElse(global.dashCooldown > 0, 0.5, 1))
}
if (getUpgradeLevel(UPGRADE_TYPE.MOVE_SPEED) > 0)
{
	draw_sprite_ext(sMoveSpeedIcons, getUpgradeLevel(UPGRADE_TYPE.MOVE_SPEED)-1, 76, viewport_height - 4, 2, 2, 0, c_white, 1)
}
if (getUpgradeLevel(UPGRADE_TYPE.MAGNET) > 0)
{
	draw_sprite_ext(sMagnetIcons, getUpgradeLevel(UPGRADE_TYPE.MAGNET)-1, 112, viewport_height - 4, 2, 2, 0, c_white, 1)
}
if (getUpgradeLevel(UPGRADE_TYPE.SHIELD) > 0)
{
	draw_sprite_ext(sShieldIcons, getUpgradeLevel(UPGRADE_TYPE.SHIELD)-1, 148, viewport_height - 4, 2, 2, 0, c_white, ifElse(global.shieldHits > 0, 1, 0.5))
}