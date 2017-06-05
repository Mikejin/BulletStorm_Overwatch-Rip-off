//图像编号
sprite_index = global.heroArray[heroNumber,5];
//gamepad move
if (gamepad_is_connected(playerNumber))
{
	scr_move_gamepad(playerNumber);	
}

//动作脚本
if alive = true
{
//执行状态
script_execute(state);
//下蹲的脚本
scr_crouch();
//碰撞
scr_collisions();
//大招蓄力
scr_ultCharge();

//捡东西
//scr_pickUp();
//SHOOT
}

mask_index = maskPlayer;

//更新指针位置
rxaxis = gamepad_axis_value(playerNumber, gp_axisrh);
ryaxis = gamepad_axis_value(playerNumber, gp_axisrv);

//指针方向
//rdirection = point_direction(0, 0, xaxis, yaxis);	// 跟左摇杆
//rmagnitude = point_distance(0, 0, xaxis, yaxis);

rdirection = point_direction(0, 0, rxaxis, ryaxis);  // 跟右摇杆
rmagnitude = point_distance (0, 0, rxaxis, ryaxis);

if (rmagnitude >= threshold) 
{
	cursor.image_angle = rdirection;
	curPreDirection = rdirection;
}

//指针位置跟随
cursor.x = x + lengthdir_x(curDistance, curPreDirection);
cursor.y = y + lengthdir_y(curDistance, curPreDirection);

//播放动画的规则
if moveSpeed != 0 || firing = true
{
    image_speed = 1;
}   
else    
{
    image_index = 0;
    image_speed = 0;
}

//DashCD调整值
dashCD = (1.2 + global.weaponArray[arm,8])* room_speed;

//装弹
if clipAmmo <= 0	{reloading = 1; }
if reloading = 1 	{progress += 1;	}

if progress >= reloadTime
	{
	reloading = 0;
	progress = 0;
	//ammo -= global.weaponArray[arm,7]; 
	clipAmmo = clipAmount; 
	}
if clipAmmo > clipAmount
{
	clipAmmo = clipAmount; //避免弹药溢出
}

//退子弹
if gamepad_button_check_pressed(playerNumber,gp_face4) and !reloading
{
	clipAmmo = 0;
}

//拉远视距
if gamepad_button_check(playerNumber,gp_shoulderlb)
{
	curDistance = approach(curDistance,260,20);
}
else
{
	curDistance = approach(curDistance,110,20);
}
	
//判断投掷物目标
//scr_target_throw(objPlayerPar,objGame.n)

//击中的闪光
if (hit && alarm[3] <= 0) {
   alarm[3] = 0.06 * room_speed; // Flashes for 0.8 seconds before turning back to normal
}

//生命恢复
/*
	if hp/hpMax <= 0.70
	{
		hp += hpMax/100/ room_speed;
	}
*/

if hp > hpMax
{
hp = hpMax;
}
//判断死亡
if hp < 0
{
	hp = 0;
	//当前武器掉落
	/*
	if arm != 0
	{
	with instance_create_depth(x,y,-1,global.weaponArray[arm,12])
			{
			speed = 7;
			direction = point_direction(x,y,other.cursor.x,other.cursor.y  )
			cantPick = 1;
			}
	}
	*/	
	//死亡的粒子
	if alive
	{
		for (i=0; i<random_range(10,15); i++)
		{
			with instance_create_depth(x,y,depth,oParticle)
			{
				direction = random(360);
				image_angle = direction;
				speed = random_range(4,8);
				sprite_index = choose(sprPlayerR,sprPlayerR2);
				image_xscale = random_range(0.4,0.8);
				image_yscale = random_range(0.4,0.8);
				alphaDamp = 0.01;
				speedShrink = 0.99;
			}
		}
	}
	alive = false;
	alarm[5] = room_speed *6;
	//instance_destroy()
}

//躲在掩体之后
if place_meeting(x,y,oCoverCollision) and !firing
{
	behindCover = 1;
	height = approach(height,crouchHeight,0.025)
}
else
{
	behindCover = 0;
	height = approach(height,standingHeight,0.05)
}

//与其他玩家的LOS
//if !collision_line(x,y,)