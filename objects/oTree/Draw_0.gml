draw_self()

var barStartX = x - 25
var barStartY = y + 40

if (hp < maxHp && hp > 0 && instance_exists(oPlayer) && (healthbarDelay > 0 || distance_to_object(oPlayer) <= 44 || (instance_exists(oAxe) && collision_rectangle(spriteLeftX, spriteTopY, spriteRightX, spriteBottomY, oAxe, false, true))))
{
	draw_set_alpha(1)
	draw_set_color(c_red)
	draw_rectangle(barStartX, barStartY, barStartX + round(50 * hp / maxHp), barStartY + 10, false)

	draw_set_color(c_white)
	draw_rectangle(barStartX - 1, barStartY -1, barStartX + 50, barStartY + 10, true)
	
	// Hackish delay so that if the axe hits it on any frame, the healthbar doesn't go in and out
	if (instance_exists(oAxe) && collision_rectangle(spriteLeftX, spriteTopY, spriteRightX, spriteBottomY, oAxe, false, true))
		healthbarDelay = 10
}