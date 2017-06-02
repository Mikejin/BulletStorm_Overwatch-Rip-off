// Rotate when thrown
image_angle += (3 * speed)/2 * dir;

// Friction
if time <= 150 {time ++};
x = ease_out_expo(time,xx,tX-xx+randomX,150)
y = ease_out_expo(time,yy,tY-yy+randomY,150)

//引信
fuze --;
if fuze <= 0
{
	impact = true;
	sprite_index = sprExplosion
	image_index = 0;
	image_speed = 10;
	//炸裂碎片
	with instance_create_depth(x,y,depth,oAnimation)
	{
		sprite_index = sprExplosion
	}
	instance_destroy();
}

