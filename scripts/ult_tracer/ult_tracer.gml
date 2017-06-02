if ultReady = true and (gamepad_button_check_pressed(playerNumber, gp_face3))
{	
	//大招动画
	ultActivation = instance_create_depth(x,y,depth,oUltActivation)
	ultActivation.belongsTo = id;
	
	//放炸弹
	with instance_create_depth(x,y,depth,oTracerBomb)
	team = other.team
	
	//清除能量
	ultReady = false;
	ultimateCharge = 0;
}	