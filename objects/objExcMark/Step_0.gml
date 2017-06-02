//判断是否存在玩家
if instance_exists(belongsTo)
{
	if (belongsTo.rmagnitude >= belongsTo.threshold) 
	{
	dir = point_direction(0, 0, belongsTo.rxaxis, belongsTo.ryaxis)
	spd = 5;
	x += lengthdir_x(spd,dir);
	y += lengthdir_y(spd,dir);
	}
}
	
if !instance_exists(belongsTo)
{
	instance_destroy();
}

