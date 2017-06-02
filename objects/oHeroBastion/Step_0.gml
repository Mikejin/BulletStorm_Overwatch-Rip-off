event_inherited();
scr_shoot();
moveSpeed = 2.7 + global.weaponArray[arm,17] + crouchMod

skill_bastion();

if !bunkerMode //普通模式
{
moveSpeed = 3 + crouchMod
weaponSprite = sprGunBastion;
fireRate = 9;
inaccuracy = 4;
bulletSpeed = 13;
bulletDamage = 18;
clipAmount = 20;
bulletType = objBulletShotgun;
reloadTime = 2.2 * room_speed;
weaponOffset = 38;
viewXscale = 2.7;
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
reloadTime = 7.2 * room_speed;
weaponOffset = 50;
viewXscale = 2;
}

ult_bastion();

//变形减伤
if transforming 
{
	damageReduction = 0.3;
}
else
{
	damageReduction = 0;
}