//死掉
if hp <= 0
{
	instance_destroy();	
	//创建掉落 1个或2个
	for (i=0; i < random_range(1,2); i++)
	{
		with instance_create_depth(x,y,-2,scr_crateDrop())
		{	
			image_angle = random(360);
			speed = random_range(2,3.5);
			direction = random(360);
		}
	}	
}

if (hit && alarm[0] <= 0) {
   alarm[0] = 0.08 * room_speed; // Flashes for 0.8 seconds before turning back to normal
}