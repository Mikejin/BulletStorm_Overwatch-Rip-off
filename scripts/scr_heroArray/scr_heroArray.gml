//set up empty array
for (i =0; i < heroCount; i ++)
{
    for (j = 0; j < 4; j ++)
    {
        global.weaponArray[i,j] = 0;
    }
}

//[0] Soldier 76 
global.heroArray[0,0] = 0 //编号
global.heroArray[0,1] = sprHero0; //Sprite Index
global.heroArray[0,2] = "Soldier 76"; //Name
global.heroArray[0,3] = oHeroSoldier76; //角色object
global.heroArray[0,4] = "Dash" //skill name
global.heroArray[0,5] = sprPlayerSoldier76 //hero Sprite

//[1] Tracer
global.heroArray[1,0] = 1 //编号
global.heroArray[1,1] = sprHero1; //Sprite Index
global.heroArray[1,2] = "Soldier 76"; //Name
global.heroArray[1,3] = oHeroTracer; //角色object
global.heroArray[1,4] = "Blink" //skill name
global.heroArray[1,5] = sprPlayerTracer //hero Sprite

//[2] Reinhardt
global.heroArray[2,0] = 2 //编号
global.heroArray[2,1] = sprHero2; //Sprite Index
global.heroArray[2,2] = "Reinhardt"; //Name
global.heroArray[2,3] = oHeroReinhardt; //角色object
global.heroArray[2,4] = "Blockage" //skill name
global.heroArray[2,5] = sprPlayerReinhardt //hero Sprite


//[3] Roadhog 
global.heroArray[3,0] = 3 //编号
global.heroArray[3,1] = sprHero3; //Sprite Index
global.heroArray[3,2] = "Roadhog"; //Name
global.heroArray[3,3] = oHeroBastion; //角色object
global.heroArray[3,4] = "Dash" //skill name
global.heroArray[3,5] = sprPlayerSoldier76 //hero Sprite

//[4] Bastion 
global.heroArray[4,0] = 4 //编号
global.heroArray[4,1] = sprHero4; //Sprite Index
global.heroArray[4,2] = "Bastion"; //Name
global.heroArray[4,3] = oHeroBastion; //角色object
global.heroArray[4,4] = "Transforming" //skill name
global.heroArray[4,5] = sprPlayerBastion //hero Sprite

//[5] Lucio 
global.heroArray[5,0] = 5 //编号
global.heroArray[5,1] = sprHero5; //Sprite Index
global.heroArray[5,2] = "Soldier 76"; //Name
global.heroArray[5,3] = objBulletPistol; //Ammo Index
global.heroArray[5,4] = 36 //Muzzle Offset x
global.heroArray[5,5] = sprHero5 //hero Sprite
