//SPRING EFFECT (jfx_spring)
if (move_dir == 1) { //What direction to move to
    if (time1 < 1) time1 += 0.01; //Adding to the variable "time" until it reaches the value 1 - This is how fast the animation will play - I decided to add "0.01" every step but feel free to change it if you want the animation to take longer/shorter
    new_y = jfx_spring(time1, 0.4, 10)*distance; //This is the actual effect - See script to learn more - Note: We multiply it by the "distance" variable because the number we get from it reaches only from 0 to 1	
    y = start_y+new_y; //Now add "new_x" to the starting position
} 

//After we changed the scale variable, let's set image_xscale and image_yscale to it so we can actually see the effect

if image_alpha > 0.15
{
	image_alpha -= 0.02;
}
else
{
	instance_destroy();
}