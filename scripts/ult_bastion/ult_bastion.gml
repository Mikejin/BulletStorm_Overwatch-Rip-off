if ultReady = true and (gamepad_button_check_pressed(playerNumber, gp_face3))
{	
	//大招动画
	ultActivation = instance_create_depth(x,y,depth,oUltActivation)
	ultActivation.belongsTo = id;
	
	firing = true;
	scr_shake(8);

	instance_create_depth(x+lengthdir_x(weaponOffset,curPreDirection),y-15+lengthdir_y(weaponOffset,curPreDirection),depth-20,oMuzzleFire)
	alarm[0] = fireRate;
		{
			//火箭
			with (instance_create_depth(weapon.x+lengthdir_x(weaponOffset,weapon.image_angle),weapon.y+lengthdir_y(weaponOffset,weapon.image_angle),-10,oBastionRocket))		
			//子弹偏移
			{
			direction = other.weapon.image_angle;
			image_angle = direction;
			speed = 6;
			bulletFrom = other.id;
			bulletTeam = other.team;
			aim = other.target; //辅助瞄准
			}
		}
	
	//清除能量
	ultReady = false;
	ultimateCharge = 0;
}	