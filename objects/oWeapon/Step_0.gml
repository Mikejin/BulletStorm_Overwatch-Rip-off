if instance_exists(belongsTo)
{
weapon = belongsTo.arm;
//Set direction towards sight
	if belongsTo.target != noone
	{
	aD = angle_difference(point_direction(x,y,belongsTo.shootTargetX,belongsTo.shootTargetY),image_angle)
	}
	else
	{
	aD = angle_difference(point_direction(x,y, belongsTo.cursor.x, belongsTo.cursor.y),image_angle);
	}
	//转向速度，平均是6左右
	image_angle += median(-belongsTo.rotSpeed,aD,belongsTo.rotSpeed);
	
//翻转武器
if (belongsTo.cursor.x < x) 
{
image_yscale = -1
}
else 
image_yscale = 1;
}
