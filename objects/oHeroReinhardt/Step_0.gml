event_inherited();

scr_meleeAttack();
if shield.active = false
{
moveSpeed = 2.9 + crouchMod
}
else
{
moveSpeed = 1.5 + crouchMod
}

skill_reinhardt();
shieldHP = shield.hp;
shieldHPMax = shield.hpMax;

ult_reinhardt();
if !inUlt  //普通状态
{
damageReduction = 0.0
moveSpeed = 2.7 + crouchMod

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
moveSpeed = 3.6 + crouchMod
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
