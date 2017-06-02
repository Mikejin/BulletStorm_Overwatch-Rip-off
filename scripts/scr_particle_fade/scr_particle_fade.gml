/// @function particleFade
/// @param alpha damping
/// @param speed damping

	if image_alpha > 0.1
	{
		image_alpha -= argument0;
	}
	else
	{
		instance_destroy();
	}
	speed *= argument1;
