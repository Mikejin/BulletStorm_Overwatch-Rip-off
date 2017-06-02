speed *= 0.98;

direction += curve;
image_angle += speed;

if hitSth = true  and exploded = false//消失
{
	exploded = true;	
		for (i=0; i<16; i++)
		{
			with instance_create_depth(x,y,depth,objBulletScatterPiece)
			{
				direction = random(360);
				image_angle +=speed;
				speed = random_range(12,15);
				sprite_index = other.sprite_index;
				image_xscale = random_range(0.5,1.2);
				image_yscale = image_xscale * choose(-1.8,1.8)
				bulletTeam = other.bulletTeam
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