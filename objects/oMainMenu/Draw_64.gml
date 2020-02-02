draw_set_alpha(1)
draw_set_color(c_black)
draw_set_font(fntHUD)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
var baseyPos=500

draw_text(viewport_width / 2, baseyPos, "Enter name:")

var nameX = viewport_width / 2
var nameY = baseyPos+40
draw_text(nameX, nameY, global.playerName)
if (charCursorToggle)
{
	var barX = nameX + (string_width(global.playerName) / 2) + 4
	var barHeight = max(string_height(global.playerName) + 4, 26)
	draw_line_width(barX, nameY - barHeight / 2, barX, nameY + barHeight / 2, 3)
}

if (string_length(global.playerName) > 0)
{
	draw_set_halign(fa_middle)
	draw_text(viewport_width / 2, baseyPos+80, "Press enter to start.")
}