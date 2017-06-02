//墙壁碰撞
if place_meeting(x+hspd,y,objBarrierPar)
{
	while(!place_meeting(x+sign(hspd),y,objBarrierPar))
	{
		x+=sign(hspd);
	}
	hspd = 0;
}

if place_meeting(x,y+vspd,objBarrierPar)
{
	while(!place_meeting(x,y+sign(vspd),objBarrierPar))
	{
		y+=sign(vspd)
	}
	vspd = 0;
}
//if !dashing 
//{
	//玩家之间碰撞
	/*
	if place_meeting(x+hspd,y,objPlayerPar)
	{
		show_debug_message("hehe")
		while(!place_meeting(x+sign(hspd),y,objPlayerPar))
		{
			x+=sign(hspd);
		}
		hspd = 0;
	}
	if place_meeting(x,y+vspd,objPlayerPar)
	{
		while(!place_meeting(x,y+sign(vspd),objPlayerPar))
		{
			y+=sign(vspd)
		}
		vspd = 0;
	}
//}
