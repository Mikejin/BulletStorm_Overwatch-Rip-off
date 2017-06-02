speed += accel;
direction += curve;
image_angle = direction;

damage -= damageDamping

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
				image_xscale = random_range(0.8,1.6);
				image_yscale = image_xscale * choose(-1.6,1.6)
				alphaDamp = 0.04;
				speedShrink = 0.95;
			}
	}
	if hitPlayer = true
	{
		bulletFrom.ultimateCharge += damage;
	}
	instance_destroy();
}

//高度降低
var lower = 25; //百分之25机会
if lower > random(100)
{
	if height >0 {height -= fallSpeed;}
} 

if image_index <= image_number -1
{
	image_speed = 0;
}