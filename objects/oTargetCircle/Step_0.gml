if instance_exists(belongsTo) 
{
	if belongsTo.throwTarget != noone
	{
	
	x = belongsTo.throwTarget.x;
	y = belongsTo.throwTarget.y-30;
	}
	
	
//SPRING EFFECT (jfx_spring)
if (time < 1)
{time += 0.01};
else
{
time = 0;
}
//Adding to the variable "time" until it reaches the value 1 - This is how fast the animation will play - I decided to add "0.01" every step but feel free to change it if you want the animation to take longer/shorter
scale = jfx_spring(time, 0.4, 10); //This is the actual effect - See script to learn more

//After we changed the scale variable, let's set image_xscale and image_yscale to it so we can actually see the effect
image_xscale = scale*1.5;
image_yscale = scale*1.5;
}
else
{
instance_destroy();
}


