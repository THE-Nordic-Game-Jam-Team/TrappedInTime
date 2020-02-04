//logic for spawning VOID

difficultyrating+=global.upgradeLevel[UPGRADE_TYPE.AXE]-1
difficultyrating+=global.upgradeLevel[UPGRADE_TYPE.TEAR]*1.5
difficultyrating+=global.upgradeLevel[UPGRADE_TYPE.MAGNET]*.5
difficultyrating+=global.upgradeLevel[UPGRADE_TYPE.MOVE_SPEED]*.5
difficultyrating+=global.upgradeLevel[UPGRADE_TYPE.SHIELD]*.5
difficultyrating+=global.upgradeLevel[UPGRADE_TYPE.TELEPORT]*.5


if difficultyrating>0
{
	difficultyrating=difficultyrating/4
	
	if difficultyrating>difficultyratingMax
		difficultyrating=difficultyratingMax
	
	if voidSpawnRate>0
		voidSpawnRate-=difficultyrating;
	else
	{
		voidSpawnRate=voidSpawnRateMax
		
		var dist = 400;
		var dir = random(360);
		var spawnxbase= 0;
		var spawnybase= 0;
		
		if instance_exists(oPlayer)
		{
			
		var spawnxbase= oPlayer.x;
		var spawnybase= oPlayer.y;
			
		}
		
		instance_create_layer(spawnxbase+lengthdir_x(dist, dir), spawnybase+lengthdir_y(dist, dir),"Instances",oVoid)
		//show_message("F")
	}
}