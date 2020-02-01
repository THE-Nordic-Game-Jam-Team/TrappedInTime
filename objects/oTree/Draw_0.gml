draw_self()

var barStartX = x - 25
var barStartY = y + 40

if (hp < maxHp && hp > 0 && instance_exists(oPlayer) && distance_to_object(oPlayer) <= 25)
{
	draw_set_alpha(1)
	draw_set_color(c_red)
	draw_rectangle(barStartX, barStartY, barStartX + round(50 * hp / maxHp), barStartY + 10, false)

	draw_set_color(c_white)
	draw_rectangle(barStartX, barStartY, barStartX + 50, barStartY + 10, true)
}