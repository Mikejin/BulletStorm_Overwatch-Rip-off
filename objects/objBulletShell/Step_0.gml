image_angle += speed *30;

speed *= 0.8;

//销毁
if image_alpha > 0.2
{
	image_alpha -=0.05;
}
else
{
	instance_destroy();
}