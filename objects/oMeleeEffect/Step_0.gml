	
if belongsTo != noone
{
	x = belongsTo.x+lengthdir_x(belongsTo.weaponOffset,image_angle);
	y = belongsTo.y+lengthdir_y(belongsTo.weaponOffset,image_angle);
	image_angle = belongsTo.weapon.image_angle;
}

