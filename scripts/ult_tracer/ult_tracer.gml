if ultReady = true and (gamepad_button_check_pressed(playerNumber, gp_face3))
{	
	//大招动画
	ultActivation = instance_create_depth(x,y,depth,oUltActivation)
	ultActivation.belongsTo = id;
	
	//放炸弹
	instance_create_depth(x,y,depth,oTracerBomb)
	
	//清除能量
	ultReady = false;
	ultimateCharge = 0;
}	