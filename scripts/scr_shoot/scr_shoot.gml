//SHOOT
if (gamepad_button_check(playerNumber, gp_shoulderr))
{
	//射击
	if firing = false 
	{
		if  clipAmmo >0	//如果是枪
		{
			{
			firing = true;
			scr_shake(5.5);

			instance_create_depth(x+lengthdir_x(weaponOffset,curPreDirection),y-15+lengthdir_y(weaponOffset,curPreDirection),depth-20,oMuzzleFire)
			alarm[0] = fireRate;
			var i;
			for (i =0; i < global.weaponArray[arm,11]; i ++) 
				{
							
					{
					//朝准星飞的子弹
					with (instance_create_depth(weapon.x+lengthdir_x(global.weaponArray[arm,4],weapon.image_angle),weapon.y+lengthdir_y(global.weaponArray[arm,4],weapon.image_angle),-10,bulletType))		
					//子弹偏移
					{
						direction = other.weapon.image_angle+random_range(-(other.inaccuracy+other.fireUnstable),other.inaccuracy+other.fireUnstable);
						image_angle = direction;
						speed = other.bulletSpeed;
						bulletFrom = other.id;
						bulletTeam = other.team;
						damage = other.bulletDamage;
						damageDamping = damage* damping
						aim = other.target; //辅助瞄准
	
					}
					}
				}
			clipAmmo -= 1;
			}
		}
		else 
		{
			draw_text(x,y-20,"No Ammo");
		}
	}
}