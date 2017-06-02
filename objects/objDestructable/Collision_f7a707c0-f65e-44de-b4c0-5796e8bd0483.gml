hit = true;

if (hit != 0)
{
    hit = approach(hit,0,0.4);
}

xx = other.x
yy = other.y

//喷血方向
fallDir = point_direction(xx,yy,x,y)
toBullet = point_direction(x,y,xx,yy)


	hp -= 2;
	for (i=0; i < random_range(0,2); i++)
	{
		with instance_create_depth(x,y,-1,objCrateDebris)
		{
			speed = 4;
			direction = other.toBullet+ random_range(-100,100);
			image_angle = random(360);
		}
	}

	//销毁子弹
	with other{instance_destroy()}

