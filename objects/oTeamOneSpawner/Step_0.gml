with objPlayerPar
{
	if team = 1 and point_distance(x,y,other.x,other.y) < other.range
	{
		if hp < hpMax
		{
			hp+=2;
		}
	}
}