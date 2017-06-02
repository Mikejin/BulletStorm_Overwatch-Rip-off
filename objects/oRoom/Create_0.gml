var i;
for (i=0; i<17; i++)
{
	instance_create_depth(x+i*48,y,depth,objWallTall)
	instance_create_depth(x+i*48,y+sprite_height,depth,objWallTall)
	instance_create_depth(x,y+i*48+1,depth,objWallTall)
	instance_create_depth(x+sprite_width,y+i*48+1,depth,objWallTall)
}