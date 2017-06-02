image_yscale = image_xscale;
image_angle = belongsTo.weapon.image_angle;

if active = true
{
	image_xscale = approach(image_xscale,1,0.03);//起盾
	if hp <= 0
	{
		//死亡的粒子
		var i,amount = random_range(2,8);
		amount--;
		if amount >0
		{
			with instance_create_depth(x,y,depth*2,oParticle)
			{
				direction = random(360);
				image_angle = direction;
				speed = random_range(4,8);
				sprite_index = sprLightLine;
				image_xscale = random_range(1,1.2);
				image_yscale = random_range(0.5,3);
			}
		}
		active = false;
		available = false;
		alarm[0] = room_speed *8; //8秒后恢复可用	
	}
}
else //非激活状态
{
	image_xscale = approach(image_xscale,0.01,0.15);//收盾
	if hp < hpMax and hp>0
	{
	hp+= hpMax/(100*room_speed)*5;
	}
}

//闪光
if (hit && alarm[1] <= 0) {
   alarm[1] = 0.05 * room_speed; // Flashes for 0.8 seconds before turning back to normal
}
