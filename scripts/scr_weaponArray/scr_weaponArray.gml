//set up empty array
for (i =0; i < 12; i ++)
{
    for (j = 0; j < 19; j ++)
    {
        global.weaponArray[i,j] = 0;
    }
}

//[0] Pistol
global.weaponArray[0,0] = 0
global.weaponArray[0,1] = sprGunPistol; //Sprite Index
global.weaponArray[0,2] = 12; //Rate of Fire
global.weaponArray[0,3] = objBulletPistol; //Ammo Index
global.weaponArray[0,4] = 36 //Muzzle Offset x
global.weaponArray[0,5] = 16 //Bullet Speed
global.weaponArray[0,6] = 3 //BulletDeviation
global.weaponArray[0,7] = 12 //Ammo Amount per clip
global.weaponArray[0,8] = 0 //DashCD Mod
global.weaponArray[0,9] = "Pistol" // Name
global.weaponArray[0,10] = sprPlayerY //Player Sprite Attack Index
global.weaponArray[0,11] = 1 //Bullets per shot
global.weaponArray[0,12] = objWeaponPistol //Weapon Object
global.weaponArray[0,13] = room_speed *1.0 //Reload Time(Frames)
global.weaponArray[0,14] = 20 //Bullet Damage Lowest
global.weaponArray[0,15] = 20 //Bullet Damage Highest
global.weaponArray[0,16] = 2 //View Angle(objview.xscale)
global.weaponArray[0,17] = 0.5 //Player Move Speed Muldifier
global.weaponArray[0,18] = 8 //转动角速度

//[1] Rifle
global.weaponArray[1,0] = 1
global.weaponArray[1,1] = sprGunRifle; //Sprite Index
global.weaponArray[1,2] = 8; //开火间隔
global.weaponArray[1,3] = objBulletRifle; //Ammo Index
global.weaponArray[1,4] = 40 //Muzzle Offset x
global.weaponArray[1,5] = 16 //Bullet Speed
global.weaponArray[1,6] = 4 //BulletDeviation
global.weaponArray[1,7] = 24 //Ammo Amount per clip
global.weaponArray[1,8] = 1 //DashCD Mod
global.weaponArray[1,9] = "Rifle" // Name
global.weaponArray[1,10] = sprPlayerY //Player Sprite Attack Index
global.weaponArray[1,11] = 1 //Bullets per shot
global.weaponArray[1,12] = objWeaponRifle //Weapon Object
global.weaponArray[1,13] = room_speed * 2.7 //Reload Time(Frames)
global.weaponArray[1,14] = 30 //Bullet Damage Lowest
global.weaponArray[1,15] = 30 //Bullet Damage Highest
global.weaponArray[1,16] = 2.4 //View Angle(objview.xscale)
global.weaponArray[1,17] = -0.2 //Player Move Speed Muldifier
global.weaponArray[1,18] = 5 //转动角速度

//[2] Shotgun
global.weaponArray[2,0] = 2
global.weaponArray[2,1] = sprGunShotgun; //Sprite Index
global.weaponArray[2,2] = 60; //Rate of Fire
global.weaponArray[2,3] = objBulletShotgun; //Ammo Index
global.weaponArray[2,4] = 40 //Muzzle Offset x
global.weaponArray[2,5] = random_range(14,20) //Bullet Speed
global.weaponArray[2,6] = 35 //子弹偏移
global.weaponArray[2,7] = 4 //Ammo Amount per clip
global.weaponArray[2,8] = 1.5 //DashCD Mod
global.weaponArray[2,9] = "Shotgun" // Name
global.weaponArray[2,10] = sprPlayerY //Player Sprite Attack Index
global.weaponArray[2,11] = 9 //Bullets per shot
global.weaponArray[2,12] = objWeaponShotgun //Weapon Object
global.weaponArray[2,13] = room_speed *2.2 //Reload Time(Frames)
global.weaponArray[2,14] = 21 //Bullet Damage Lowest
global.weaponArray[2,15] = 21 //Bullet Damage Highest
global.weaponArray[2,16] = 1 //View Angle(objview.xscale)
global.weaponArray[2,17] = -0.2 //Player Move Speed Muldifier
global.weaponArray[2,18] = 6 //转动角速度


//[3] ScatterGun
global.weaponArray[3,0] = 3
global.weaponArray[3,1] = sprGunScatter; //Sprite Index
global.weaponArray[3,2] = 30; //Rate of Fire
global.weaponArray[3,3] = objBulletScatter; //Ammo Index
global.weaponArray[3,4] = 30 //Muzzle Offset x
global.weaponArray[3,5] = 14 //Bullet Speed
global.weaponArray[3,6] = 3 //BulletDeviation
global.weaponArray[3,7] = 4 //Ammo Amount per clip
global.weaponArray[3,8] = 0.5 //DashCD Mod
global.weaponArray[3,9] = "ScatterGun" // Name
global.weaponArray[3,10] = sprPlayerY  //Player Sprite Attack Index
global.weaponArray[3,11] = 1 //Bullets per shot
global.weaponArray[3,12] = objWeaponScatterGun //Weapon Object
global.weaponArray[3,13] = 2 * room_speed //Reload Time(Frames)
global.weaponArray[3,14] = 20 //Bullet Damage Lowest
global.weaponArray[3,15] = 20 //Bullet Damage Highest
global.weaponArray[3,16] = 2.4 //View Angle(objview.yscale)
global.weaponArray[3,17] = 0 //Player Move Speed Muldifier
global.weaponArray[3,18] = 5 //转动角速度

//[4] Shield
global.weaponArray[4,0] = 4
global.weaponArray[4,1] = sprShieldGun; //Sprite Index
global.weaponArray[4,2] = 30; //开火间隔
global.weaponArray[4,3] = objBulletPistol; //Ammo Index
global.weaponArray[4,4] = 30 //Muzzle Offset x
global.weaponArray[4,5] = 13 //Bullet Speed
global.weaponArray[4,6] = 3 //BulletDeviation
global.weaponArray[4,7] = 10 //Ammo Amount per clip
global.weaponArray[4,8] = 3.5 //DashCD Mod
global.weaponArray[4,9] = "Shield" // Name
global.weaponArray[4,10] = sprPlayerY  //Player Sprite Attack Index
global.weaponArray[4,11] = 1 //Bullets per shot
global.weaponArray[4,12] = objWeaponShield //Weapon Object
global.weaponArray[4,13] = 1.5 * room_speed //Reload Time(Frames)
global.weaponArray[4,14] = 30 //Bullet Damage Lowest
global.weaponArray[4,15] = 30 //Bullet Damage Highest
global.weaponArray[4,16] = 2 //View Angle(objview.xscale)
global.weaponArray[4,17] = -0.5 //Player Move Speed Muldifier
global.weaponArray[4,18] = 5 //转动角速度

//[5] Rapid Fire
global.weaponArray[5,0] = 5
global.weaponArray[5,1] = sprGunRapidGun; //Sprite Index
global.weaponArray[5,2] = 4.5; //开火间隔
global.weaponArray[5,3] = objBulletRapid; //Ammo Index
global.weaponArray[5,4] = 30 //Muzzle Offset x
global.weaponArray[5,5] = 20 //Bullet Speed
global.weaponArray[5,6] = 6 //BulletDeviation
global.weaponArray[5,7] = 16 //Ammo Amount per clip
global.weaponArray[5,8] = 0.1 //DashCD Mod
global.weaponArray[5,9] = "Uzi" // Name
global.weaponArray[5,10] = sprPlayerY  //Player Sprite Attack Index
global.weaponArray[5,11] = 1 //Bullets per shot
global.weaponArray[5,12] = objWeaponRapidGun //Weapon Object
global.weaponArray[5,13] = room_speed *1.2 //Reload Time(Frames)
global.weaponArray[5,14] = 20 //Bullet Damage Lowest
global.weaponArray[5,15] = 20 //Bullet Damage Highest
global.weaponArray[5,16] = 1.25 //View Angle(objview.xscale)
global.weaponArray[5,17] = 0.2 //Player Move Speed Muldifier
global.weaponArray[5,18] = 8 //转动角速度

//[6] Sniper
global.weaponArray[6,0] = 6
global.weaponArray[6,1] = sprGunSniper; //Sprite Index
global.weaponArray[6,2] = 30; //Rate of Fire
global.weaponArray[6,3] = objBulletSniper; //Ammo Index
global.weaponArray[6,4] = 40 //Muzzle Offset x
global.weaponArray[6,5] = random_range(20,27) //Bullet Speed
global.weaponArray[6,6] = 2 //子弹偏移
global.weaponArray[6,7] = 2 //Ammo Amount per clip
global.weaponArray[6,8] = 1 //DashCD Mod
global.weaponArray[6,9] = "Sniper" // Name
global.weaponArray[6,10] = sprPlayerY //Player Sprite Attack Index
global.weaponArray[6,11] = 1 //Bullets per shot
global.weaponArray[6,12] = objWeaponSniper //Weapon Object
global.weaponArray[6,13] = room_speed * 3.5 //Reload Time(Frames)
global.weaponArray[6,14] = 150 //Bullet Damage Lowest
global.weaponArray[6,15] = 150 //Bullet Damage Highest
global.weaponArray[6,16] = 5 //View Angle(objview.xscale)
global.weaponArray[6,17] = -0.3 //Player Move Speed Muldifier
global.weaponArray[6,18] = 3.6 //转动角速度

//[7] Medic
global.weaponArray[7,0] = 7
global.weaponArray[7,1] = sprGunMedic; //Sprite Index
global.weaponArray[7,2] = 20; //Rate of Fire
global.weaponArray[7,3] = objBulletMedic; //Ammo Index
global.weaponArray[7,4] = 30 //Muzzle Offset x
global.weaponArray[7,5] = 14 //Bullet Speed
global.weaponArray[7,6] = 3 //子弹偏移
global.weaponArray[7,7] = 14 //Ammo Amount per clip
global.weaponArray[7,8] = 1.2 //DashCD Mod
global.weaponArray[7,9] = "MedicGun" // Name
global.weaponArray[7,10] = sprPlayerY //Player Sprite Attack Index
global.weaponArray[7,11] = 1 //Bullets per shot
global.weaponArray[7,12] = objWeaponMedic //Weapon Object
global.weaponArray[7,13] = room_speed * 2.5 //Reload Time(Frames)
global.weaponArray[7,14] = 25 //Bullet Damage Lowest
global.weaponArray[7,15] = 25 //Bullet Damage Highest
global.weaponArray[7,16] = 2.8 //View Angle(objview.xscale)
global.weaponArray[7,17] = -0.1 //Player Move Speed Muldifier
global.weaponArray[7,18] = 6 //转动角速度

//[8] Heavy Machine Gun
global.weaponArray[8,0] = 8
global.weaponArray[8,1] = sprGun8; //Sprite Index
global.weaponArray[8,2] = 5; //Rate of Fire
global.weaponArray[8,3] = objBulletMachineGun; //Ammo Index
global.weaponArray[8,4] = 30 //Muzzle Offset x
global.weaponArray[8,5] = 17 //Bullet Speed
global.weaponArray[8,6] = 20 //BulletDeviation
global.weaponArray[8,7] = 100 //Ammo Amount per clip
global.weaponArray[8,8] = 4.2 //DashCD Mod
global.weaponArray[8,9] = "HVG" // Name
global.weaponArray[8,10] = sprPlayerY  //Player Sprite Attack Index
global.weaponArray[8,11] = 1 //Bullets per shot
global.weaponArray[8,12] = objWeaponHeavyMachineGun //Weapon Object
global.weaponArray[8,13] = room_speed * 7.5 //Reload Time(Frames)
global.weaponArray[8,14] = 18 //Bullet Damage Lowest
global.weaponArray[8,15] = 18 //Bullet Damage Highest
global.weaponArray[8,16] = 1.6 //View Angle(objview.xscale)
global.weaponArray[8,17] = -0.6 //Player Move Speed Muldifier
global.weaponArray[8,18] = 2.8 //转动角速度

//[10] Heavy Machine Gun
global.weaponArray[10,0] = 8
global.weaponArray[10,1] = sprGun8; //Sprite Index
global.weaponArray[10,2] = 5; //Rate of Fire
global.weaponArray[10,3] = objBulletMachineGun; //Ammo Index
global.weaponArray[10,4] = 30 //Muzzle Offset x
global.weaponArray[10,5] = 17 //Bullet Speed
global.weaponArray[10,6] = 20 //BulletDeviation
global.weaponArray[10,7] = 100 //Ammo Amount per clip
global.weaponArray[10,8] = 4.2 //DashCD Mod
global.weaponArray[10,9] = "HVG" // Name
global.weaponArray[10,10] = sprPlayerY  //Player Sprite Attack Index
global.weaponArray[10,11] = 1 //Bullets per shot
global.weaponArray[10,12] = objWeaponHeavyMachineGun //Weapon Object
global.weaponArray[10,13] = room_speed * 7.5 //Reload Time(Frames)
global.weaponArray[10,14] = 18 //Bullet Damage Lowest
global.weaponArray[10,15] = 18 //Bullet Damage Highest
global.weaponArray[10,16] = 1.6 //View Angle(objview.xscale)
global.weaponArray[10,17] = -0.6 //Player Move Speed Muldifier
global.weaponArray[10,18] = 2.8 //转动角速度