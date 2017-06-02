//选目标体系
game_set_speed(60, gamespeed_fps);
n = 1;

heroCount = 6;

//Zoom variables
default_zoom_width = camera_get_view_width(view_camera[0])*0.6;
default_zoom_height = camera_get_view_height(view_camera[0])*0.6;

//颜色表
global.color[0] = sprPlayerR;
global.color[1] = sprPlayerR2;
global.color[2] = sprPlayerG;
global.color[3] = sprPlayerG2;
global.color[4] = sprPlayerR;

global.teamColor[0] = c_maroon;
global.teamColor[1] = c_blue;

//英雄表
scr_heroArray();

//建立武器表
scr_weaponArray();

randomize();

pads = gamepad_get_device_count()
//创建玩家


var i;
for (i=0;i<4;i++)
{
	spawn_id = instance_create_depth(x,y,depth,oPlayerChoose)
	with spawn_id 
	{
	//分队
	playerNumber = i;
		if playerNumber =2 ||playerNumber =3
		{
		team = 2;
		}
		else
		{
		team = 1;
		}
	}
}
/*
//创建玩家2
	spawn_id = instance_create_depth(0,0,-5, objPlayer2);
	do
	{
	    spawn_id.x = random(room_width);
	    spawn_id.y = random(room_height);

	with (spawn_id)
	    {
	        collision = place_meeting(x,y,objBarrierPar)
	    }
	}
	until spawn_id.collision = 0;
//创建玩家3	
		spawn_id = instance_create_depth(0,0,-5, objPlayer3);
	do
	{
	    spawn_id.x = random(room_width);
	    spawn_id.y = random(room_height);

	with (spawn_id)
	    {
	        collision = place_meeting(x,y,objBarrierPar)
	    }
	}
	until spawn_id.collision = 0;
//创建玩家4	
		spawn_id = instance_create_depth(0,0,-5, objPlayer4);
	do
	{
	    spawn_id.x = random(room_width);
	    spawn_id.y = random(room_height);

	with (spawn_id)
	    {
	        collision = place_meeting(x,y,objBarrierPar)
	    }
	}
	until spawn_id.collision = 0;

/*
roomAmountH = 3;
roomAmountV = 3;

//创建房间
for (i=0; i<3; i ++)
{
	for (j = 0; j<3; j++)
	{
		with instance_create_depth(400+i*(800+400),400+j*(800+400),depth,oRoom)
		{
			hh = other.i;
			vv = other.j;
		}
	}
}