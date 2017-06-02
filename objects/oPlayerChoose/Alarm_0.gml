/// @description 倒计时游戏开始
if team = 1
{
with instance_create_depth(oTeamOneSpawner.x+random_range(-30,30),oTeamOneSpawner.y,oTeamOneSpawner.depth,global.heroArray[curPick,3])
	{
	
		playerNumber = other.playerNumber;
		team = other.team;
	}
}
else if team = 2
{
with instance_create_depth(oTeamTwoSpawner.x+random_range(-30,30),oTeamTwoSpawner.y,oTeamTwoSpawner.depth,global.heroArray[curPick,3])
	{
		playerNumber = other.playerNumber;
		team = other.team;
	}
}
instance_destroy();