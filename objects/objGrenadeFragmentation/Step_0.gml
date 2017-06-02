event_inherited();
if impact = true
{
	with objPlayerPar
	{
	var dis = point_distance(x,y,other.x,other.y)
	if dis < other.impactRange
		{
	//闪光
	hit = true;
	scr_shake(2);
	var takeDamage = other.basicDamage + dis/other.impactRange * other.extraDamage;
	hp -= takeDamage;
	var damageNumber = instance_create_depth(x,y-30+random_range(-2,12),-1111,objDamage)
	damageNumber.number = takeDamage;
	//被击中的粒子
		for (i=0; i<random_range(2,4); i++)
		{
			with instance_create_depth(x,y,depth,oParticle)
			{
				direction = other.toBullet+random_range(-60,60);
				image_angle = direction;
				speed = random_range(4,8);
				sprite_index = other.sprite_index;
				image_xscale = random_range(0.15,0.3);
				image_yscale = random_range(0.15,0.3);
				alphaDamp = 0.01;
				speedShrink = 0.97;
			}
		}
		}	
	}
}
