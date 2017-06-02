/// @description 
draw_self();
draw_set_font(ft_overwatchBig)
if contesting != 0
{
draw_text(x-80,y,"Contesting "+ string((alarm[1]+alarm[2])/room_speed))
}

draw_text(x-80,y+60,string(teamOneScore/winScore));
draw_text(x+40,y+188,string(teamTwoScore/winScore));
draw_rectangle_color(x-124,y-124,x-1,y-124+teamOneScore/winScore*255,c_red,c_red,c_red,c_red,false)
draw_rectangle_color(x+1,y-124,x+124,y-124+teamTwoScore/winScore*255,c_green,c_green,c_green,c_green,false)


