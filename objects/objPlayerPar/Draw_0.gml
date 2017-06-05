if alive = false and view_current == playerNumber 
{
	depth = -9999
	draw_set_halign(fa_left)
	draw_set_font(ft_overwatchBig)
	draw_text_transformed(x,y,"Waiting for Respawn "+string(round(alarm[5]/room_speed)+1),1,1,0);
	draw_set_color(c_white);
	draw_set_font(ft_overwatch)
}

for (var i=0;i<instance_number(objPlayerPar);i++)
{
	var curinst = instance_find(objPlayerPar,i);
	if curinst.team = team || (!collision_line(x,y,curinst.x,curinst.y,objWallTall,false,true) and !collision_line(x,y,curinst.x,curinst.y,objWallBig,false,true))
	{
		if view_current == curinst.playerNumber
		{
			
			if alive = true
			{	
				//阴影
				draw_sprite_ext(sprPlayerShadow,0,x,y,1,1,0,c_white,0.72);
				if (hit) 
				{ 
				    shader_set(shader_0);    // Sets the shader to our shader file we created earlier
				    draw_sprite_ext(sprite_index,team-1,x,y,scaleH,scaleV,rot,c_white,1)  // Draws the sprite, but now we have a shader set so it draws it as white
					shader_reset(); // Resets the shader to the default one (does nothing)
				} 
				else 
				{
				    draw_sprite_ext(sprite_index,team-1,x,y,scaleH,scaleV,rot,c_white,1) // If hit is false, no shader is applied.
				}
				
				
				//draw武器
				//翻转武器
				draw_sprite_ext(weaponSprite,0,weapon.x,weapon.y,weapon.image_xscale,weapon.image_yscale,weapon.image_angle,c_white,1)
			}
		}
	}
}
//DEBUG专用
draw_set_font(ft_overwatch)
//draw_text(x,y,ultimateCharge);
//draw_text(x,y+40,string(target));
//draw_text(x,y+60,string(shootTargetX));
//draw_text(x,y+60,string(targeting));


/*
if alive = true
{
	if (hit) 
	{ 
	    shader_set(shader_0);    // Sets the shader to our shader file we created earlier
	    draw_sprite_ext(global.color[playerNumber],image_index,x,y,scaleH,scaleV,rot,c_white,1)  // Draws the sprite, but now we have a shader set so it draws it as white
	    shader_reset(); // Resets the shader to the default one (does nothing)
	} 
	else 
	{
	    draw_sprite_ext(global.color[playerNumber],image_index,x,y,scaleH,scaleV,rot,c_white,1) // If hit is false, no shader is applied.
	}
}
8*/

if view_current != playerNumber 
{
if reloading
	{
	draw_text(x-40,y-80,"RELOADING...") //reloading只给其他玩家看
	}
}


