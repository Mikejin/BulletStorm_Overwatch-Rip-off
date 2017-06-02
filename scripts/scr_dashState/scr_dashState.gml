//Walkin' around.
dashing = true;
//dashDirection = point_direction(x,y,cursor.x,cursor.y);	
x += hspd;
y += vspd;	

hspd  =  lengthdir_x(moveSpeed *3.3,moveDirection)
vspd  =  lengthdir_y(moveSpeed *3.3,moveDirection)

var dash = instance_create_depth(x,y,depth,oDashEffect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;
