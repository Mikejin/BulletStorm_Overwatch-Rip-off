var dis = point_distance(x,y, objPlayer.x, objPlayer.y);

if(!collision_line(x,y,objPlayer.x,objPlayer.y,objWall,1,1)) alerted = true;

if (alerted == true) and (dis <= giveupRange) and (dis > attackRange) and isFalling = 0
{
    mp_potential_step(objPlayer.x, objPlayer.y, enemySpeed, false);
	direction = point_direction(x,y,objPlayer.x,objPlayer.y)
	image_angle = direction;
}

else if (alerted == true) and (dis <= attackRange)
{
    speed = 0;
    state = scr_enemyAttack;
	image_index = 0;
	
}   else    {
    state = scr_enemyStatic;
    alerted = false;
    sprite_index = normalSprite;
}