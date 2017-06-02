draw_set_font(ft_overwatch);
draw_set_color(c_white);
draw_set_valign(fa_bottom);
draw_set_halign(fa_left);

if instance_exists(belongsTo) and view_current = belongsTo.playerNumber
{
//生命值
	draw_sprite(sprHB,0,camX+camW/2-sprite_get_width(sprHB)/2,camY+camH-50);
	draw_sprite_ext(sprHBBlock,0,camX+camW/2-sprite_get_width(sprHBBlock)/2,camY+camH-50,belongsTo.hp/belongsTo.hpMax,1,0,c_white,0.8);
	//当前生命值
	draw_set_font(ft_overwatchBig);
	draw_text_transformed(camX+camW/2-sprite_get_width(sprHBBlock)/2+10,camY+camH-10,string(round(belongsTo.hp)),1,1,0)
	//最大生命值
	draw_set_font(ft_overwatch);
	draw_text_transformed(camX+camW/2-sprite_get_width(sprHBBlock)/2+60,camY+camH-10,string(belongsTo.hpMax),1,1,0)
	
//SkillCD
	if belongsTo.heroNumber = 1// 裂空
	{
	draw_sprite_ext(sprDashBar,0,camX+camW/2-sprite_get_width(sprDashBar)/2,camY+camH-80,(belongsTo.dashCount/3),1,0,c_white,0.8);
	draw_text_transformed(camX+camW/2-10,camY+camH-53,string(global.heroArray[belongsTo.heroNumber,4])+"  "+ string(round(belongsTo.dashCount)),1,1,0)
	}
	else if belongsTo.heroNumber = 0 //士兵
	{
	draw_sprite_ext(sprDashBar,0,camX+camW/2-sprite_get_width(sprDashBar)/2,camY+camH-80,(belongsTo.stamina/belongsTo.staminaMax),1,0,c_white,0.8);
	draw_text_transformed(camX+camW/2-10,camY+camH-53,string(global.heroArray[belongsTo.heroNumber,4]),1,1,0)
	}
	else //其他人
	{
	draw_sprite_ext(sprDashBar,0,camX+camW/2-sprite_get_width(sprDashBar)/2,camY+camH-80,(belongsTo.skillCD-round(belongsTo.alarm[2]))/belongsTo.skillCD,1,0,c_white,0.8);
	draw_text_transformed(camX+camW/2-10,camY+camH-53,global.heroArray[belongsTo.heroNumber,4],1,1,0)
	}
//弹药
	draw_set_font(ft_overwatchBig);
	//弹药底板
	//如果没有装弹
	if belongsTo.reloading = 0
	{
	draw_sprite_ext(box1,0,camX+camW/2-sprite_get_width(sprHB)/2-30,camY+camH-10,1,belongsTo.clipAmmo/global.weaponArray[belongsTo.arm,7],0,c_white,0.8);
	}
	else //正在装弹
	{
	draw_sprite_ext(box1,0,camX+camW/2-sprite_get_width(sprHB)/2-30,camY+camH-10,1,belongsTo.progress/global.weaponArray[belongsTo.arm,13],0,c_white,0.8);
	}
	//当前弹夹数量
	draw_text_color(camX+camW/2-sprite_get_width(sprHB)/2-50,camY+camH-30,string(belongsTo.clipAmmo),c_yellow,c_yellow,c_yellow,c_yellow,1)
	draw_set_font(ft_overwatch);
	//最大弹夹数量
	draw_text_color(camX+camW/2-sprite_get_width(sprHB)/2-30,camY+camH-10,string(global.weaponArray[belongsTo.arm,7]),c_white,c_white,c_white,c_white,0.8)

//投掷物
	draw_sprite_ext(box2,0,camX+camW/2+sprite_get_width(sprHB)/2+30,camY+camH-10,1,(belongsTo.throwCD-round(belongsTo.alarm[6]))/belongsTo.throwCD,0,c_white,0.8);
	


}

draw_set_valign(fa_top); //对齐模式set回去