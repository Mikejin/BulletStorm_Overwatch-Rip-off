if (hit) 
{ 
    shader_set(shader_0);    // Sets the shader to our shader file we created earlier
    draw_self();  // Draws the sprite, but now we have a shader set so it draws it as white
    shader_reset(); // Resets the shader to the default one (does nothing)
} 
else 
{
    draw_self(); // If hit is false, no shader is applied.
}

//生命值
draw_rectangle_color(x-100,y+55,x-100+200*hp/hpMax,y+60,c_orange,c_orange,c_orange,c_orange,false);
	