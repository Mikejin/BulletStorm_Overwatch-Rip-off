//翻滚
if gamepad_button_check(playerNumber,gp_shoulderl) and stamina > 5 //and arm !=4
{
	stamina --;
	running = true;
}
else
{
	running = false;
}

if stamina < staminaMax and !running
{
	stamina += 0.3;
}