draw_set_font(ft_overwatch);
draw_set_color(c_white);
draw_set_valign(fa_bottom);
draw_set_halign(fa_left);

var num = belongsTo.heroNumber //英雄编号

if instance_exists(belongsTo) and view_current = belongsTo.playerNumber
{
//Avatar
	draw_sprite_ext(global.heroArray[num,2],0,camX+20,camY+camH-8,0.7,0.7,0,c_white,1);
//生命值
	//最大值
	draw_sprite_ext(sprHB,0,camX+120,camY+camH-70,0.7,0.7,0,c_white,0.8);
	//当前值
	draw_sprite_ext(sprHBBlock,0,camX+120,camY+camH-70,belongsTo.hp/belongsTo.hpMax*0.7,0.7,0,c_white,0.8);
	//当前生命值
	draw_set_font(ft_overwatchBig);
	draw_text_transformed(camX+170,camY+camH-70,string(round(belongsTo.hp)),1,1,0)
	//最大生命值
	draw_set_font(ft_overwatch);
	draw_text_transformed(camX+220,camY+camH-70,string(belongsTo.hpMax),1,1,0)
	
//SkillCD
	draw_sprite_ext(global.heroArray[num,8],0,camX+camW-180,camY+camH-90,0.7,0.7,0,c_white,0.9)
	switch (num)
	{
		case 0 :  //士兵76
		draw_sprite_ext(sprDashBar,0,camX+camW-197,camY+camH-90,(belongsTo.stamina/belongsTo.staminaMax),1,0,c_white,0.8);
		//draw_text_transformed(camX+camW/2-10,camY+camH-53,string(global.heroArray[belongsTo.heroNumber,4]),1,1,0)
		break;
		
		case 1://猎空
		draw_sprite_ext(sprDashBar,0,camX+camW-180,camY+camH-90,(belongsTo.dashCount/3),1,0,c_white,0.8);
		//draw_text_transformed(camX+camW/2-10,camY+camH-53,string(global.heroArray[belongsTo.heroNumber,4])+"  "+ string(round(belongsTo.dashCount)),1,1,0)
		break;
		
		case 2://莱因哈特
		draw_sprite_ext(sprDashBar,0,camX+camW-180,camY+camH-90,(belongsTo.shieldHP/belongsTo.shieldHPMax),1,0,c_white,0.8);
		//draw_text_transformed(camX+camW/2-10,camY+camH-53,string(global.heroArray[num,4]),1,1,0)
		break;
		
		case 4://堡垒
		if belongsTo.transforming = true
		{
		draw_sprite_ext(sprDashBar,0,camX+camW-180,camY+camH-90,(round(belongsTo.alarm[2]))/belongsTo.transformTime,1,0,c_white,0.8);
		//draw_text_transformed(camX+camW/2-10,camY+camH-53,global.heroArray[belongsTo.heroNumber,4],1,1,0)
		}
		break;
		
		case 5://堡垒
		if belongsTo.switchingAura = true
		{
		draw_sprite_ext(sprDashBar,0,camX+camW-180,camY+camH-90,(round(belongsTo.alarm[2]))/belongsTo.switchTime,1,0,c_white,0.8);
		//draw_text_transformed(camX+camW/2-10,camY+camH-53,global.heroArray[belongsTo.heroNumber,4],1,1,0)
		}
		break;
		
	}

//弹药
	draw_set_font(ft_overwatchBig);
	//弹药底板
	//枪械图标
	draw_sprite_ext(global.heroArray[num,6],0,camX+camW-55,camY+camH-45,1,1,0,c_white,0.9);
	//如果没有装弹
	if belongsTo.reloading = 0
	{
	draw_sprite_ext(box1,0,camX+camW-40,camY+camH-80,1,belongsTo.clipAmmo/belongsTo.clipAmount,0,c_white,0.8);
	}
	else //正在装弹
	{
	draw_sprite_ext(box1,0,camX+camW-40,camY+camH-80,1,belongsTo.progress/belongsTo.reloadTime,0,c_white,0.8);
	}
	//当前弹夹数量
	draw_text_color(camX+camW-60,camY+camH-100,string(belongsTo.clipAmmo),c_yellow,c_yellow,c_yellow,c_yellow,1)
	draw_set_font(ft_overwatch);
	//最大弹夹数量
	draw_text_color(camX+camW-40,camY+camH-80,string(belongsTo.clipAmount),c_white,c_white,c_white,c_white,0.8)

//大招蓄力
	
	draw_text(camX+camW/2-2,camY+camH-120,round(belongsTo.ultimateCharge/belongsTo.ultimageMax*100))
	draw_sprite_ext(global.heroArray[num,9],0,camX+camW/2,camY+camH-70,0.7,0.7,0,c_white,0.9)
	draw_healthbar_circular(camX+camW/2,camY+camH-70,40,90,belongsTo.ultimateCharge/belongsTo.ultimageMax*100,spr_healthbar)
}

draw_set_valign(fa_top); //对齐模式set回去