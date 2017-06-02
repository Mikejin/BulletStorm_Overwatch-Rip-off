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

//被击中的粒子

	xx = other.x
	yy = other.y
	//喷血方向
	fallDir = point_direction(xx,yy,x,y)
	toBullet = point_direction(x,y,xx,yy)

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

