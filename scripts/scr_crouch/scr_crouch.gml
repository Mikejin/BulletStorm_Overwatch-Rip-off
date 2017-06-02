
if height < standingHeight //蹲着
{
	scaleH = 1+(standingHeight - height)*1/4;
	scaleV = 1+(standingHeight - height)*-1/4;
	//下蹲的移动速度
	crouchMod = -0.8;
}
else //站着
{
	scaleH = 1;
	scaleV = 1;
	crouchMod = 0;
}

