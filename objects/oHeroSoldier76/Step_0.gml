event_inherited();
if alive = true
{
	scr_shoot();

	//技能
	skill_soldier76();
	ult_soldier76();

	if running
	{
		moveSpeed = (5.2 + crouchMod) * (1+moveMod)
		var dash = instance_create_depth(x,y,depth,oDashEffect);
		dash.sprite_index = sprite_index;
		dash.image_index = team-1;
	}
	else
	{
		moveSpeed = (2.5 + crouchMod) * (1+moveMod)
	}

	if inUlt //“我看到你了”
	{
		fireRate = 4;
		inaccuracy = 0;
		bulletSpeed = 23;
		bulletDamage = 32;
		bulletType = objBulletRifle;
		reloadTime = 1.2 * room_speed;
		moveDeviationMod = 1;
	}
	else
	{
		fireRate = 10;
		inaccuracy = 4;
		bulletSpeed = 14;
		bulletDamage = 30;
		bulletType = objBulletRifle;
		reloadTime = 2.4 * room_speed;
		moveDeviationMod = 10;

	}
}