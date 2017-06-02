 sprite_index = normalSprite;

//敌人判断角色位置
var dis = point_distance(x,y,objPlayer.x,objPlayer.y);
var dir = point_direction(x,y,objPlayer.x,objPlayer.y);

//敌人的视野范围
// 视野范围设定为面对方向的60度弧形
// 就算进入追击状态，当视野范围内丢失玩家一段时间后，会重新进入static状态（待更新）

var angleDif = min(abs(dir - image_angle), 360 - abs(dir - image_angle));

if (dis <= aggroRange and (angleDif <= viewAngle))

{
    state = scr_enemyFollow;
}
else
{
    if alarm[0] = -1
        alarm[0] = 2*room_speed;
}
