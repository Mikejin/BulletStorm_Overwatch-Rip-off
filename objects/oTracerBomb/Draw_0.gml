draw_self();
draw_set_font(ft_overwatch);
draw_text(x,y-10,string(round(alarm[0]/room_speed)));

draw_set_alpha(0.3);
draw_circle_color(x,y,impactRange,c_red,c_red,false);
draw_set_alpha(1);

draw_set_color(c_yellow)
draw_lensflare(x,y,3,3,2,2,choose(3,2,1),choose(0.5,0.6,0.7))
draw_set_color(c_white)