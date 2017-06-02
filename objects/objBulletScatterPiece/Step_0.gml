speed *= 0.98;
if image_alpha >0.2
{
	image_alpha -=0.05
}
else 
{
instance_destroy();
}

direction += curve;
image_angle += speed;

if hitSth = true  //消失
{
	{
	for (i=0; i<random_range(2,4); i++)
		{
			with instance_create_depth(x,y,depth,oParticle)
			{
				direction = random(360);
				image_angle = direction;
				speed = random_range(1,3);
				sprite_index = other.sprite_index;
				image_xscale = random_range(1,2);
				image_yscale = random_range(1,2);
				alphaDamp = 0.05;
				speedShrink = 0.90;
			}
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

if image_index <= image_number -1
{
	image_speed = 0;
}