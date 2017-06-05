hp = 100;
hpMax = 400;

armor = 0;
damageReduction = 0;

playerNumber = 0;
team = 0;
heroNumber = 0;
//角色属性
fireRate = 10;
inaccuracy = 10;
bulletSpeed = 10;
bulletDamage = 10;
bulletType = objBulletPistol;
reloadTime = 3 * room_speed;
rotSpeed = 10;
moveMod = 0;

alive = true;

//移动相关
magnitude = 0
threshold = 0
xaxis = 0;
yaxis = 0;

//是否被击中
hit = false;
behindCover = 0;

canCrouch = true;
cover = noone;

ultimateCharge = 1800;
ultimageMax = 2000;
ultReady = false;

ultActivation = noone; //大招动画

//技能相关参数
skillReady = true;
dashing = false;
skillCD = 1.8;

scaleH = 1;
scaleV = 1;
rot =0;

//玩家状态机
state = scr_moveState;

//还是要给一个初始值，用来在非接触下死亡时候用
fallDir = random(360);
toBullet = random(360);
image_angle = 0;

//组队信息

//高度值
standingHeight = 2;
crouchHeight = 1.2;
height = 2;

inRoom = 0;
//actionCoolDown = false;

//给juicy用的
timer=0;
time_x = 0;
time_y = 0;
scale_x = 0;
scale_y = 0;

//携带武器 0为初始空武器
arm = 0;
fireUnstable = 0;
moveDeviationMod = 10;
damageMod = 0;
firing = false;

//投掷目标
throwRange = 410;
hasThrowTarget = false;
throwTarget = noone;
throwCD = 13*room_speed;

throwTargetArrow = instance_create_depth(x,y,depth,oTargetCircle)
throwTargetArrow.belongsTo = id;

//指针
cursor = 0;
threshold =.2;
curPreDirection = 0;
curDistance = 100;

//辅助瞄准相关
target = noone;	
shootTargetX = 0;
shootTargetY = 0;

//装弹
clipAmmo = 0;
ammo = 5000;
progress = 0;
reloading = 0;
finish = 100;

//插件移动
hspd = 0;
vspd = 0;
crouchMod = 0;
moveSpeed = 2.8 + global.weaponArray[arm,17] + crouchMod

//创建武器sprite
weapon = instance_create_depth(x,y-15,depth-1,oWeapon)
weapon.belongsTo = id;
weapon.weapon = arm;

moveDirection=-1;

//射击位置偏移
muzzleOffest = 0;

//创建视野
view = instance_create_depth(x,y,-5,objView)
view.belongsTo = id;

//瞄准
hasTarget = false;

//创建摄像机
camera = instance_create_depth(x,y,-5,objPlayerCam)
camera.belongsTo = id;

//创建HUD
HUD = instance_create_depth(x,y,depth,oHUD)
HUD.belongsTo = id;
HUD.camX = camera_get_view_x(view_camera[playerNumber])
HUD.camY = camera_get_view_y(view_camera[playerNumber])
HUD.cawW = camera_get_view_width(view_camera[playerNumber])
HUD.cawH = camera_get_view_height(view_camera[playerNumber])

//游标
cursor = instance_create_depth(x, y, 0, objCursor)
cursor.belongsTo = id;

