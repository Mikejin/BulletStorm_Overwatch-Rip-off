draw_text(x+10,y+500,team);
draw_text(x,y+20,x);
draw_text(x,y+80,y);
if view_current = playerNumber
{
	draw_sprite_stretched(sprHeroSelectBackground,0,x,y,1080,810)	
	for (var i=0; i <objGame.heroCount; i ++)
	{
		if i = curPick
		{	
		draw_sprite_ext(global.heroArray[i,1],0,x+120+168*i,y+250,1.2,1.2,0,c_white,0.9);
		}
		else
		{
		draw_sprite_ext(global.heroArray[i,1],0,x+120+168*i,y+250,1,1,0,c_white,0.9);
		}
	}
	
	var viewh = camera_get_view_width(playerNumber)
	var viewv = camera_get_view_height(playerNumber)
	//游戏标题
	//draw_sprite(sprGameTitle,0,x+viewh/2,y)
	//开始倒计时
	
	draw_set_font(ft_overwatchBig)
	draw_text(x+viewh/2,y+viewv/2,"Game Starts in  " + string(round(alarm[0]/room_speed)))
	draw_set_font(ft_overwatch)
}


