event_inherited();
if alive = true
{
scr_shoot();
moveSpeed = (2.5 + crouchMod) * (1+moveMod)

skill_lucio();
with objPlayerPar
{
	if team = other.team
	{
		if point_distance(x,y,other.x,other.y) < other.auraRange
		{
			if other.aura = 1
			{
			hp += other.healBoost
			}
			else if other.aura = 2
			{
			moveMod = other.speedBoost;
			}
		}
	}
}

ult_tracer();
}