if controlSide = 2 
{
	teamTwoScore ++
	image_index = 2;
}
else if controlSide = 1
{
	teamOneScore ++
	image_index = 1;
}
else
{
	image_index = 0;
}

var t1,t2;
t1= 0; t2 =0;
with objPlayerPar
{
	if team = 1 and place_meeting(x,y,oObjectiveControl)
	{
	t1 +=1;
	}
	else if team = 2 and place_meeting(x,y,oObjectiveControl)
	{
	t2 +=1;
	}
}

//控制占领区
if controlSide != 1 and t1 > t2 and t2 =0 and contesting != 1
{
	contesting = 1;
	alarm[1] = room_speed * controllTime;
	alarm[2] = -1;
	
}
if controlSide != 2 and t2 > t1 and t1 =0 and contesting != 2
{
	contesting = 2;
	alarm[2] = room_speed * controllTime;
	alarm[1] = -1;
}
if t1 =0 and t2= 0
{
	contesting = 0;
	alarm[1] = -1;
	alarm[2] = -1;
}


