event_inherited();

if alive = true
{

	//举盾走得慢
	if shield.active = false
	{
	moveSpeed = (2.3 + crouchMod) * (1+moveMod)
	scr_meleeAttack();
	}
	else
	{
	moveSpeed = (1.1 + crouchMod) * (1+moveMod)
	}

	skill_reinhardt();
	//同步盾牌生命值
	shieldHP = shield.hp;

	ult_reinhardt();
	if !inUlt  //普通状态
	{
	damageReduction = 0.0
	weaponSprite = sprSword;
	fireRate = 72;
	inaccuracy = 0;
	meleeDamage = 30;
	clipAmount = 1;
	bulletType = objBulletRapid;
	reloadTime = 1.2 * room_speed;
	weaponOffset = 30;
	viewXscale = 0.5;
	}
	else
	{
	shield.active = false;
	damageReduction = 0.8
	moveSpeed = 3.7 + crouchMod
	weaponSprite = sprSwordBig;
	fireRate = 30;
	inaccuracy = 0;
	meleeDamage = 60;
	clipAmount = 1;
	bulletType = objBulletRapid;
	reloadTime = 1.2 * room_speed;
	weaponOffset = 55;
	viewXscale = 0.8;
	}
}