draw_self();
draw_set_font(ft_overwatch);
draw_text(x,y-10,string(fuze));

draw_set_alpha(0.4);
draw_circle_color(x,y,impactRange,c_red,c_red,false);
draw_set_alpha(1);