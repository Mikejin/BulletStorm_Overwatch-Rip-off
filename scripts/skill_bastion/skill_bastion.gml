//翻滚
if gamepad_button_check_pressed(playerNumber,gp_shoulderl) and transforming = false
{
	if bunkerMode = false
	{
		transforming = true;
		alarm[2] = transformTime  //变身
	}
	else
	{
		transforming = true;
		alarm[2] = transformTime  //变身
	}	
}
