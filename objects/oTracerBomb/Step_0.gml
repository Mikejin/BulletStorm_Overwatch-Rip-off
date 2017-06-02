//SPRING EFFECT (jfx_spring)
if (time < 2) time += 0.015; //Adding to the variable "time" until it reaches the value 2 - This is how fast the animation will play - I decided to add "0.01" every step but feel free to change it if you want the animation to take longer/shorter
scale = jfx_spring(time, 0.4, 4); //This is the actual effect - See script to learn more

//After we changed the scale variable, let's set image_xscale and image_yscale to it so we can actually see the effect
image_xscale = scale;
image_yscale = scale;

if impact = true
{
	with objPlayerPar
	{
	var dis = point_distance(x,y,other.x,other.y)
	if dis < other.impactRange
		{
	//闪光
	hit = true;
	scr_shake(8);
	var takeDamage = other.basicDamage + dis/other.impactRange * other.extraDamage;
	if armor >0 
		{
		armor -= takeDamage
		}
		else
		{
		hp -= takeDamage
		}
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
	with instance_create_depth(x,y,depth,oAnimation)
	{
		sprite_index = sprExplosion2
	}
	instance_destroy();
}
