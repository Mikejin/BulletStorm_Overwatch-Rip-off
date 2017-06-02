
/*
//PICKING UP STUFF AND THROWING STUFF
if (gamepad_button_check_pressed(playerNumber, gp_face1))
{
	if arm != 0  and !place_meeting(x,y,objProps)
		{
		//丢武器
			with instance_create_depth(x,y,-1,global.weaponArray[arm,12])
			{
			speed = 1;
			direction = point_direction(x,y,other.cursor.x,other.cursor.y  )
			cantPick = 1;
			}
			//丢下来
			arm = 0;
			clipAmmo = 0;
			weapon.createShield = false; //重置盾牌生成
		
		}
		//捡武器
		with instance_place(x, y, objLootWeaponPar)
			{
			if other.arm = 0 and cantPick = 0
				{
				other.arm = weaponIndex;
				//清空弹夹
				other.clipAmmo = 0;		
				instance_destroy();
				}
			}	
}