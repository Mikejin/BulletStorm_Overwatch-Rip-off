event_inherited();

//属性
hp =  700;
hpMax = 700;
arm = 7;
moveSpeed = 2.7 + crouchMod

weaponSprite = sprSword;
fireRate = 72;
inaccuracy = 0;
meleeDamage = 40;
bulletType = objBulletRapid;
reloadTime = 1.2 * room_speed;
weaponOffset = 30;

//特殊属性
meleeEffect = noone;
shield = instance_create_depth(x,y,depth,oShieldShield)
shield.belongsTo = id;
inUlt = false;
