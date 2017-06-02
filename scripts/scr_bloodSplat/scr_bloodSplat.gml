// Spawn blood puddles
if bloodTimer > 0 {
	bloodTimer -= 1;
	if random(100) < bloodSplatChance || spawnStart { //spawn sprite animation
		_x = x-lengthdir_x(30,image_angle)+random_range(-bloodRandPos,bloodRandPos);
		_y = y-lengthdir_y(30,image_angle)+random_range(-bloodRandPos,bloodRandPos);
		with(instance_create_depth(_x,_y,-1,objBloodSplat)) {
			image_angle = other.toBullet+random_range(-other.bloodRandDir,other.bloodRandDir)-90;
		}
	}
	if random(100) < bloodPartileChance || spawnStart { //spawn particle trail
		_x = x-lengthdir_x(30,image_angle)+random_range(-bloodRandPos,bloodRandPos);
		_y = y-lengthdir_y(30,image_angle)+random_range(-bloodRandPos,bloodRandPos);
		with(instance_create_depth(_x,_y,-1,objBloodParticle)) {
			speed = random_range(7,11);
			direction = other.toBullet + random_range(-70,70);
			image_angle = direction;
		}
	}
	spawnStart = false;
}

