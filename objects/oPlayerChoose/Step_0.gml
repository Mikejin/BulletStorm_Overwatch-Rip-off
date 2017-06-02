//角色选单
if (gamepad_is_connected(playerNumber))
{
//很好的摇杆pressed解决方案
lastXaxis = xaxis;
lastYaxis = yaxis;

xaxis = gamepad_axis_value(playerNumber, gp_axislh);
yaxis = gamepad_axis_value(playerNumber, gp_axislv);

if ( xaxis > 0 && lastXaxis <= 0 ) || gamepad_button_check_pressed(playerNumber,gp_shoulderr)
    curPick +=1;
if ( xaxis < 0 && lastXaxis >= 0 ) || gamepad_button_check_pressed(playerNumber,gp_shoulderl)
    curPick -=1;
	
if curPick > objGame.heroCount  curPick = objGame.heroCount;
if curPick <0  curPick = 0;

magnitude = point_distance(0, 0, xaxis, yaxis);
if (magnitude > 1) magnitude = 1;
threshold = .2;
}

//摄像机跟随
camera_set_view_pos(view_camera[playerNumber],x ,y );
