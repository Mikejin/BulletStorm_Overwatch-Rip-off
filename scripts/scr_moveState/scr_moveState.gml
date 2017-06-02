//Walkin' around.
dashing = false;
if (magnitude >= threshold) 
	{
		moveDirection = point_direction(0,0,xaxis,yaxis);	
		x += hspd;
		y += vspd;
		fireUnstable = moveDeviationMod; //移动开火偏移
	}
	else
	{
	fireUnstable = 0;
	}

hspd  =  lengthdir_x(moveSpeed,moveDirection)
vspd  =  lengthdir_y(moveSpeed,moveDirection)






