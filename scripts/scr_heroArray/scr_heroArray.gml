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
global.heroArray[0,2] = sprHero0Avatar; //Avatar
global.heroArray[0,3] = oHeroSoldier76; //角色object
global.heroArray[0,4] = "Dash" //skill name
global.heroArray[0,5] = sprPlayerSoldier76 //hero Sprite
global.heroArray[0,6] = sprSoldierGun //Gun1 Sprite
global.heroArray[0,7] = sprSoldierGun //Gun2 Sprite
global.heroArray[0,8] = sprSoldierSkill //Skill Sprite
global.heroArray[0,9] = sprSoldierUlt //Ultimate Sprite

//[1] Tracer
global.heroArray[1,0] = 1 //编号
global.heroArray[1,1] = sprHero1; //Sprite Index
global.heroArray[1,2] = sprHero1Avatar; //Avatar
global.heroArray[1,3] = oHeroTracer; //角色object
global.heroArray[1,4] = "Blink" //skill name
global.heroArray[1,5] = sprPlayerTracer //hero Sprite
global.heroArray[1,6] = sprTracerGun //Gun1 Sprite
global.heroArray[1,7] = sprTracerGun //Gun2 Sprite
global.heroArray[1,8] = sprTracerSkill //Skill Sprite
global.heroArray[1,9] = sprTracerUlt //Ultimate Sprite

//[2] Reinhardt
global.heroArray[2,0] = 2 //编号
global.heroArray[2,1] = sprHero2; //Sprite Index
global.heroArray[2,2] = sprHero2Avatar; //Avatar
global.heroArray[2,3] = oHeroReinhardt; //角色object
global.heroArray[2,4] = "Blockage" //skill name
global.heroArray[2,5] = sprPlayerReinhardt //hero Sprite
global.heroArray[2,6] = sprReinhardtGun //Gun1 Sprite
global.heroArray[2,7] = sprReinhardtGun //Gun2 Sprite
global.heroArray[2,8] = sprReinhardtSkill //Skill Sprite
global.heroArray[2,9] = sprReinhardtUlt //Ultimate Sprite


//[3] Roadhog 
global.heroArray[3,0] = 3 //编号
global.heroArray[3,1] = sprHero3; //Sprite Index
global.heroArray[3,2] = sprHero2Avatar; //Avatar
global.heroArray[3,3] = oHeroBastion; //角色object
global.heroArray[3,4] = "Dash" //skill name
global.heroArray[3,5] = sprPlayerSoldier76 //hero Sprite
global.heroArray[3,6] = sprReinhardtGun //Gun1 Sprite
global.heroArray[3,7] = sprReinhardtGun //Gun2 Sprite
global.heroArray[3,8] = sprReinhardtSkill //Skill Sprite
global.heroArray[3,9] = sprReinhardtUlt //Ultimate Sprite

//[4] Bastion 
global.heroArray[4,0] = 4 //编号
global.heroArray[4,1] = sprHero4; //Sprite Index
global.heroArray[4,2] = sprHero4Avatar; //Avatar
global.heroArray[4,3] = oHeroBastion; //角色object
global.heroArray[4,4] = "Transforming" //skill name
global.heroArray[4,5] = sprPlayerBastion //hero Sprite
global.heroArray[4,6] = sprBastionGun //Gun1 Sprite
global.heroArray[4,7] = sprBastionGun //Gun2 Sprite
global.heroArray[4,8] = sprBastionSkill //Skill Sprite
global.heroArray[4,9] = sprBastionUlt //Ultimate Sprite

//[5] Lucio 
global.heroArray[5,0] = 5 //编号
global.heroArray[5,1] = sprHero4; //Sprite Index
global.heroArray[5,2] = sprHero4Avatar; //Avatar
global.heroArray[5,3] = oHeroLucio; //角色object
global.heroArray[5,4] = "Switching Aura" //skill name
global.heroArray[5,5] = sprPlayerBastion //hero Sprite
global.heroArray[5,6] = sprBastionGun //Gun1 Sprite
global.heroArray[5,7] = sprBastionGun //Gun2 Sprite
global.heroArray[5,8] = sprBastionSkill //Skill Sprite
global.heroArray[5,9] = sprBastionUlt //Ultimate Sprite
