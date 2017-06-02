if ultReady = true and (gamepad_button_check_pressed(playerNumber, gp_face3)) 
{	
	//大招动画
	ultActivation = instance_create_depth(x,y,depth,oUltActivation)
	ultActivation.belongsTo = id;
	
	//清除能量
	ultReady = false;
	ultimateCharge = 0;
	inUlt = true;
	inUltAnimation = instance_create_depth(x,y,depth,oInUltAnimation)
	inUltAnimation.belongsTo = id;
	alarm[4] = room_speed *7;
}	