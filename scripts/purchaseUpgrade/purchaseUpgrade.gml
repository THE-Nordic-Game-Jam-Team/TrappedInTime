// argument0 = array of upgrade costs [blue, pink, yellow]
// argument1 = upgrade type
var costs = argument0
var upgradeType = argument1

if (global.wood[0] >= costs[0] && global.wood[1] >= costs[1] && global.wood[2] >= costs[2])
{
	global.wood[0] -= costs[0]
	global.wood[1] -= costs[1]
	global.wood[2] -= costs[2]
	
	global.upgradeLevel[upgradeType]++
		
	var effectspawn=instance_create_layer(x,y,"Instances",oFX)
	effectspawn.sprite_index=sFXUpgrade
	
	return true
}

return false