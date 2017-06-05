event_inherited();
if alive = true
{
	scr_shoot();
	skill_bastion();

	if !bunkerMode //普通模式
	{
	moveSpeed = (2.4 + crouchMod) * (1+moveMod)
	weaponSprite = sprGunBastion;
	fireRate = 9;
	inaccuracy = 4;
	bulletSpeed = 13;
	bulletDamage = 18;
	clipAmount = 20;
	bulletType = objBulletPistol;
	reloadTime = 2.2 * room_speed;
	weaponOffset = 38;
	damping = 0.017
	viewXscale = 2.7;
	rotSpeed = 10;
	}
	else //堡垒模式
	{
	moveSpeed = 0
	weaponSprite = sprGunBunker;
	fireRate = 4;
	inaccuracy = 7;
	bulletSpeed = 22;
	bulletDamage = 24;
	clipAmount = 80;
	bulletType = objBulletMachineGun;
	reloadTime = 5.0 * room_speed;
	weaponOffset = 50;
	damping = 0.016
	viewXscale = 2;
	rotSpeed = 2.5;
	}

	ult_bastion();

	//变形减伤
	if transforming 
	{
		moveSpeed = 0
		damageReduction = 0.3;
	}
	else
	{
		damageReduction = 0;
	}
}