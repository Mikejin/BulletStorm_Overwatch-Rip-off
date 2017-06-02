//丢雷
if throwTarget != noone and canThrow
{
	//丢手雷
	if (gamepad_button_check_pressed(playerNumber, gp_face3))
	{
		with instance_create_depth(x+lengthdir_x(20,image_angle),y+lengthdir_y(20,image_angle),-1,objGrenadeFragmentation)
		{
		direction = point_direction(x,y,other.throwTarget.x,other.throwTarget.y  )
		target = other.throwTarget
		tDis = point_distance(x,y,other.throwTarget.x,other.throwTarget.y)
		tX = other.throwTarget.x;
		tY = other.throwTarget.y;
		}	
	canThrow = false;
	alarm[6] = throwCD; //丢手雷冷却
	//state = scr_moveState;
	}	
}