//跟随玩家
if instance_exists(belongsTo)
{
	x = belongsTo.x
	y = belongsTo.y
	
	//根据玩家武器决定视野大小远近
	image_xscale = belongsTo.viewXscale;

	image_angle = belongsTo.cursor.image_angle;
	
	//智能目标
	scr_target_lastEdited(objPlayerPar,objGame.n);
	
	if target != noone
	{
		belongsTo.hasTarget = true;
		belongsTo.target = target.id;	
		belongsTo.shootTargetX = target.x;
		belongsTo.shootTargetY = target.y;
	}
	else
	{
		belongsTo.hasTarget = false;
		belongsTo.target = noone;	
		belongsTo.shootTargetX = x;
		belongsTo.shootTargetY = y;
	}	
}
else 
{instance_destroy()}

