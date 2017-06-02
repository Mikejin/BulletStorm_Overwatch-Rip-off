//死掉
if hp <= 0
{
	instance_destroy();
	
	//创建掉落 1个或2个
	for (i=0; i <random_range(4,8); i++)
	{
		with instance_create_depth(x,y,-2,objExplosion)
		{
			image_angle = random(360);
			speed = random_range(4,7);
			direction = random(360);
		}
	}	
}
