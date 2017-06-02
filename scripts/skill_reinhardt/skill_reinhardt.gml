//翻滚
if gamepad_button_check_pressed(playerNumber,gp_shoulderl) and !inUlt
{
	if shield.active = false
	{
	shield.active = true;
	}
	else
	{
	shield.active = false;
	}
}

