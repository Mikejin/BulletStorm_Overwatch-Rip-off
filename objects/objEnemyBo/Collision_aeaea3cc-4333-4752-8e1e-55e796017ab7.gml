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

	other.hitSth = true;
}



