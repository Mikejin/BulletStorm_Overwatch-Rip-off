xx = other.x
yy = other.y

//喷血方向
fallDir = point_direction(xx,yy,x,y)
toBullet = point_direction(x,y,xx,yy)

//损失生命值
if other.bulletFrom != belongsTo.id and other.bulletTeam != belongsTo.team and height >= other.height
{
	//闪光
	hit = true;	
	var bulletDamage = other.damage
	hp -= bulletDamage;
	var damageNumber = instance_create_depth(x,y-30+random_range(-2,12),-1111,objDamage)
	damageNumber.number = bulletDamage;
	other.hitSth = true; 

	//被击中的粒子
	for (i=0; i<random_range(1,2); i++)
	{
		with instance_create_depth(x,y,depth,oParticle)
		{
			direction = other.toBullet+random_range(-60,60);
			image_angle = direction;
			speed = random_range(4,8);
			sprite_index = sprLightLine;
			image_xscale = random_range(1,1.2);
			image_yscale = random_range(0.5,3);
			alphaDamp = 0.02;
			speedShrink = 0.98;
		}
	}
}
