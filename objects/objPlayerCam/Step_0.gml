if instance_exists(belongsTo)
{
//指针跟随
x += (belongsTo.cursor.x - x) /15 ;
y += (belongsTo.cursor.y - y) /15 ;

//摄像机跟随
camera_set_view_pos(view_camera[belongsTo.playerNumber],x-400 + random_range(-shake,shake),y-300 + random_range(-shake,shake));

//抖动

shake *= decay;
}
else
{
instance_destroy()
}