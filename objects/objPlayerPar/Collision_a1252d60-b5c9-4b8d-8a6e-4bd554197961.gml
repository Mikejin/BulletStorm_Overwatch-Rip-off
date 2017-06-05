xx = other.x //子弹x
yy = other.y //子弹y

//喷血方向
fallDir = point_direction(xx,yy,x,y)
toBullet = point_direction(x,y,xx,yy)

//损失生命值

if other.bulletFrom != id  and !dashing and alive
{
	if other.bulletTeam != team
	{
		if height >= other.height || other.aim = id//检查子弹高度是否低于身高。 aim的意思是被瞄准了，直接命中
		{
		//这条逻辑判断是不是打中玩家，用来检测大招蓄力
		other.hitPlayer = true;
		//闪光
		hit = true;
		scr_shake(2);
		var takeDamage = other.damage
		//检查护甲
		if armor >0 
		{
		armor -= takeDamage * (1-damageReduction)
		}
		else
		{
		hp -= takeDamage * (1-damageReduction)
		}
		var damageNumber = instance_create_depth(x,y-30+random_range(-2,12),-1111,objDamage)
		damageNumber.number = takeDamage;
		var bX = lengthdir_x(other.knockBack,fallDir)
		var bY = lengthdir_y(other.knockBack,fallDir)
		//击退
		if !place_meeting(x+bX,y,objBarrierPar)
		{
			x += bX;
		}
		if !place_meeting(x,y+bY,objBarrierPar)
		{
			y += bY;
		}	
		other.hitSth = true;
		}
			//被击中的粒子
			for (i=0; i<random_range(1,3); i++)
			{
				with instance_create_depth(x,y,depth,oParticle)
				{
					direction = other.toBullet+random_range(-60,60);
					image_angle = direction;
					speed = random_range(4,8);
					sprite_index = sprLightLine;
					image_xscale = random_range(0.15,0.30);
					image_yscale = random_range(0.15,0.30);
					alphaDamp = 0.012;
					speedShrink = 0.95;
				}
			}
		}
}
	else  //治疗武器
	{
		if other.isGood = true
		{
		hit = true;
		scr_shake(1);
		
		var takeHealing = other.damage
		hp += takeHealing; //治疗
		var damageNumber = instance_create_depth(x,y-30+random_range(-2,12),-1111,objDamage)
		damageNumber.number = takeHealing;
		damageNumber.numberColor = c_green;
		other.hitSth = true;
		}
	}




