x = belongsTo.x;
y = belongsTo.y;

if fading = true
{
	if image_alpha >0.3
	{image_alpha -=0.04;}
	else
	{instance_destroy();}
}