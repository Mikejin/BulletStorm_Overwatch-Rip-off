/// @description 复活
// You can write your code in this editor
alive = true;
//复活了
hp = hpMax;

//重生
if team = 1
	{
	 x = oTeamOneSpawner.x+random_range(-20,20)
	 y = oTeamOneSpawner.y+random_range(-20,20)
	}
else if team = 2
	{
	 x = oTeamTwoSpawner.x+random_range(-20,20)
	 y = oTeamTwoSpawner.y+random_range(-20,20)
	}

//装满子弹
clipAmmo = clipAmount;