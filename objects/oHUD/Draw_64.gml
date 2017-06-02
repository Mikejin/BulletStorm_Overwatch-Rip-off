if instance_exists(belongsTo)
{

	
	//装子弹
	if view_current == belongsTo.playerNumber
	{	
		//手雷冷却
		draw_rectangle_color(x+2,y,x+((belongsTo.throwCD-round(belongsTo.alarm[6]))/belongsTo.throwCD)*63,y+30,mikeBlue,mikeBlueDark,mikeBlueDark,mikeBlue,false);
	}

}