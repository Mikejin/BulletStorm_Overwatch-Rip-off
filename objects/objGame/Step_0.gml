//选目标体系
if (n < 1) n = 1;

//摄像机角度偏斜
//camera_set_view_angle(view_camera[0], (mouse_x -objPlayer.x)/230);

//统计玩家人数
var pN = 0
with (objPlayerPar)
{
	pN++
}
playerCount = pN;


//重启游戏
if keyboard_check(ord("R")) 
or gamepad_button_check_pressed(0,gp_start) 
or gamepad_button_check_pressed(1,gp_start)
or gamepad_button_check_pressed(2,gp_start)
or gamepad_button_check_pressed(3,gp_start)
{
game_restart();
}




