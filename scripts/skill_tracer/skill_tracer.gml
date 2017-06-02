//翻滚
if gamepad_button_check_pressed(playerNumber,gp_shoulderl) and dashCount >0 //and arm !=4
{
	state = scr_dashState;
	alarm[1] = room_speed *0.20; //dash持续时间
	dashCount -=1;
}

if dashCount <3
{
	dashCount += 0.334/room_speed;
}