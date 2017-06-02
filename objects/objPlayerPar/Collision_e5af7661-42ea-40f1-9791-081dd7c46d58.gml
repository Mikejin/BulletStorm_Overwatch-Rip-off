xx = other.x //子弹x
yy = other.y //子弹y

//喷血方向
fallDir = point_direction(xx,yy,x,y)
toBullet = point_direction(x,y,xx,yy)

if other.image_index >=3 and other.image_index <=3
{
	if other.belongsTo != id and !dashing and alive and other.team != team
	{
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
		//被击中的粒子
		for (i=0; i<random_range(2,4); i++)
		{
			with instance_create_depth(x,y,depth,oParticle)
			{
					direction = other.toBullet+random_range(-60,60);
					image_angle = direction;
					speed = random_range(4,8);
					sprite_index = other.sprite_index;
					image_xscale = random_range(0.15,0.3);
					image_yscale = random_range(0.15,0.3);
					alphaDamp = 0.005;
					speedShrink = 0.97;
			}
		}
	}
}