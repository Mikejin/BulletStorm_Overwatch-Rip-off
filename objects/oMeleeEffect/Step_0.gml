if image_index > image_number -1
	{
	instance_destroy();
	}
	
if belongsTo != noone
{
	x = belongsTo.x+lengthdir_x(belongsTo.weaponOffset,image_angle);
	y = belongsTo.y+lengthdir_y(belongsTo.weaponOffset,image_angle);
}