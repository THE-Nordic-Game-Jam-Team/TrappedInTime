draw_self()

var barStartX = x - 50
var barStartY = y + 44

if (hp < maxHp && hp > 0)
{
	draw_set_alpha(1)
	draw_set_color(c_red)
	draw_rectangle(barStartX, barStartY, barStartX + round(50 * hp / maxHp), barStartY + 10, false)

	draw_set_color(c_white)
	draw_rectangle(barStartX, barStartY, barStartX + 50, barStartY + 10, true)
}