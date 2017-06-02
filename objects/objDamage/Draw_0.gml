draw_set_font(ft_overwatch);
draw_set_color(numberColor);
draw_set_halign(fa_center);
scaleMod = number/28;
draw_text_transformed(x,y,string(round(number)),scale*scaleMod,scale*scaleMod,random_range(-5,-10));
draw_set_color(c_white);