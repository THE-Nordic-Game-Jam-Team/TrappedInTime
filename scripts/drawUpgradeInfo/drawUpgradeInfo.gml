// argument0 = array of upgrade costs [blue, pink, yellow]
// argument1 = bottom border y of message box above upgrade
// argument2 = top border y of message box below upgrade

var costs = argument0
var topBoxOffset = argument1
var bottomBoxOffset = argument2
var costVal

draw_set_alpha(1)
draw_set_color(c_black)
// Draw rectangle background based on number of resources we need to display
var nonZeroCostsCount = ifElse(costs[0] > 0, 1, 0) + ifElse(costs[1] > 0, 1, 0) + ifElse(costs[2] > 0, 1, 0)
draw_rectangle(x - 18, topBoxOffset - 1 - (12 * nonZeroCostsCount), x + 18, topBoxOffset, false)
		
draw_set_color(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_font(fntResources)
var typesDrawn = 0
for (var i = 2; i >= 0; i--)
{
	costVal = costs[i]
	if (costVal > 0)
	{
		draw_sprite(sWood, i, x - 8, topBoxOffset - 6 - (12 * typesDrawn))
		draw_text(x + 2, topBoxOffset - 6 - (12 * typesDrawn), string(costVal))
		typesDrawn++
	}
}

// Text below upgrade station
draw_set_color(c_black)
draw_rectangle(x - 70, bottomBoxOffset, x + 70, bottomBoxOffset + 16, false)
draw_set_color(c_white)
draw_set_halign(fa_middle)
draw_text(x, bottomBoxOffset + 8, "Press E or C to upgrade.")