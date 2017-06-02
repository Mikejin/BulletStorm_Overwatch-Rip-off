xx = other.x //目标x
yy = other.y //目标y

//喷血方向
toBullet = point_direction(xx,yy,x,y)
fallDir = point_direction(x,y,xx,yy)

//损失生命值
if bulletFrom != other.id  and !other.dashing = true and other.alive = true
{
	if bulletTeam != other.team
	{
		if other.height >= height //检查子弹高度是否低于身高。 aim的意思是被瞄准了，直接命中
		{
		//闪光
		other.hit = true;
	
		var takeDamage = damage
		//检查护甲
		if other.armor >0 
		{
		other.armor -= takeDamage * (1-other.damageReduction)
		}
		else
		{
		other.hp -= takeDamage * (1-other.damageReduction)
		}
		var damageNumber = instance_create_depth(x,y-30+random_range(-2,12),-1111,objDamage)
		damageNumber.number = takeDamage;
		}
	}
}