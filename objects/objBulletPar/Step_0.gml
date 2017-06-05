speed += accel;
direction += curve;
image_angle = direction;

damage -= damageDamping;
//如果伤害不足0.3倍就开始渐隐
if damage/initDamage <= 0.3
{
	if image_alpha > 0.5
	{
		image_alpha -= 0.05;
	}
	else
	{
	instance_destroy();
	}
}

if hitSth = true  //消失
{
	for (i=0; i<random_range(2,4); i++)
	{
			with instance_create_depth(x,y,depth,oParticle)
			{
				direction = random(360);
				image_angle = direction;
				speed = random_range(1,3);
				sprite_index = other.sprite_index;
				image_xscale = random_range(0.7,1.4);
				image_yscale = image_xscale * choose(-1.4,1.4)
				alphaDamp = 0.04;
				speedShrink = 0.95;
			}
	}
	if hitPlayer = true
	{
		if bulletFrom.inUlt = false
		{
		bulletFrom.ultimateCharge += damage;
		}
	}
	instance_destroy();
}

//高度降低
var lower = 25; //百分之25机会
if lower > random(100)
{
	if height >0 {height -= fallSpeed;}
} 

//动画播放规则
if image_index <= image_number -1
{
	image_speed = 0;
}