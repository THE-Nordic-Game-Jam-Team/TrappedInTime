var xScaleCalc=1+random(xScaleRNG)
var yScaleCalc=1+random(yScaleRNG)

draw_sprite_ext(sTimeTear,image_index,x,y,xScaleCalc,yScaleCalc,0,color,1)
draw_sprite_ext(sTimeTearStroke,image_index,x,y,xScaleCalc,yScaleCalc,0,color2,1)

if (upgradeLevel < maxUpgradeLevel && playerInRange)
{
	drawUpgradeInfo(costs, y - 32, y + 32)
}