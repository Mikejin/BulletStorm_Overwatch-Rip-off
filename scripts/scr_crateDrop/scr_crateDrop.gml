var randomDrop = random(85);

if (randomDrop <= 38) 
{return objPropsAmmo;}

else if (randomDrop >= 39 && randomDrop <= 50) 
{return objPropsArmor;}

else if (randomDrop >= 51 && randomDrop<= 60) 
{return objWeaponRifle;}

else if (randomDrop >= 61 && randomDrop<= 70) 
{return objWeaponShotgun;}

else if (randomDrop >= 71 && randomDrop<= 85) 
{return objWeaponUzi;}

else if (randomDrop >= 86 && randomDrop<= 95) 
{return objPropsFragmentation;}

else
{
return objPropsAmmo;
}