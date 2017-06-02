
if instance_exists(belongsTo)
{
	if view_current = belongsTo.playerNumber and belongsTo.throwTarget != noone
	{
	draw_self();
	}
}

//DEBUG用
//draw_text(x,y,target)