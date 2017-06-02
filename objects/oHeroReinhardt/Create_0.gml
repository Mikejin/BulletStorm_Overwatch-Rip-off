event_inherited();

//属性
hp =  700;
hpMax = 700;
arm = 7;
moveSpeed = 2.7 + crouchMod

heroNumber = 2;
weaponSprite = sprSword;
fireRate = 72;
inaccuracy = 0;
meleeDamage = 40;
clipAmount = 1;
bulletType = objBulletRapid;
reloadTime = 1.2 * room_speed;
weaponOffset = 40;
viewXscale = 0.5;

//特殊属性
meleeEffect = noone;
shield = instance_create_depth(x,y,depth,oShieldShield)
shield.belongsTo = id;
shieldHP = shield.hp;
shieldHPMax = shield.hpMax;
inUlt = false;
