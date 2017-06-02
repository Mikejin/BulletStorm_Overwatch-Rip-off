//SHOOT
if (gamepad_button_check(playerNumber, gp_shoulderr))
{
	//射击
	if firing = false 
	{
		firing = true;
		scr_shake(5.5);
			
		meleeEffect = instance_create_depth(x+lengthdir_x(weaponOffset,curPreDirection),y-15+lengthdir_y(weaponOffset,curPreDirection),depth-20,oMeleeEffect)
		meleeEffect.image_angle = oWeapon.image_angle;
		meleeEffect.belongsTo = id;
		meleeEffect.team = team;
		meleeEffect.damage = meleeDamage;
		alarm[0] = fireRate;
	
		}
}
