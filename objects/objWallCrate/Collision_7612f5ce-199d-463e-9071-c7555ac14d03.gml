//是否检定过
if other.height > tall
{
	other.passCover = true;
}
else
{
	other.passCover =false;
}

//如果没穿过
if other.passCover = false
{
xx = other.x
yy = other.y

//喷血方向
fallDir = point_direction(xx,yy,x,y)
toBullet = point_direction(x,y,xx,yy)

if other.bulletFrom != id
{
//闪光
	hit = true;
	var bulletDamage = other.damage
	hp -= bulletDamage;
	var damageNumber = instance_create_depth(x,y-30+random_range(-2,12),-1111,objDamage)
	damageNumber.number = bulletDamage;
	//散落碎片
	for (i=0; i<random_range(1,3); i++)
	{
		with instance_create_depth(x,y,depth,oParticle)
		{
			direction = other.toBullet+random_range(-60,60);
			image_angle = direction;
			speed = random_range(4,8);
			sprite_index = other.sprite_index;
			image_xscale = random_range(0.05,0.25);
			image_yscale = random_range(0.05,0.25);
		}
	}
	other.hitSth = true;
}
}

