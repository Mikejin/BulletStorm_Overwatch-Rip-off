/// @description 复活
// You can write your code in this editor
alive = true;
hp = hpMax;

	//重生
	if team = 1
	{
	 x = oTeamOneSpawner.x+random_range(-10,10)
	 y = oTeamOneSpawner.y+random_range(-10,10)
	}
	else if team = 2
	{
	 x = oTeamTwoSpawner.x+random_range(-10,10)
	 y = oTeamTwoSpawner.y+random_range(-10,10)
	}

clipAmmo = global.weaponArray[arm,7];