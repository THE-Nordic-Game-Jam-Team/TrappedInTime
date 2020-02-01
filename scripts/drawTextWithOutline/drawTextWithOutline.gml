// argument0 = x
// argument1 = y
// argument2 = text
var xPos = argument0
var yPos = argument1
var text = argument2

draw_set_color(c_black)
for (var xOff = -2; xOff <= 2; xOff += 2)
{
	for (var yOff = -2; yOff <= 2; yOff += 2)
	{
		draw_text(xPos + xOff, yPos + yOff, text)
	}
}

draw_set_color(c_white)
draw_text(xPos, yPos, text)