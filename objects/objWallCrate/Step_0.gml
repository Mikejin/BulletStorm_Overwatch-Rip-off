if hp <= 0
{
	//当前武器掉落
	
	//死亡的粒子
	var i,amount = random_range(5,8);
	amount--;
	if amount >0
	{
		with instance_create_depth(x,y,depth,oParticle)
		{
			direction = random(360);
			image_angle = direction;
			speed = random_range(4,8);
			sprite_index = other.sprite_index;
			image_xscale = random_range(0.4,1.2);
			image_yscale = random_range(0.4,1.2);
		}
	}
	instance_destroy()
}

if (hit && alarm[1] <= 0) {
   alarm[1] = 0.08 * room_speed; // Flashes for 0.8 seconds before turning back to normal
}