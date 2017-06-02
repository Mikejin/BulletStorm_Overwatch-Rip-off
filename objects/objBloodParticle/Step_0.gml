// If moving
if speed > 0 {
	// Stop at wall
	if !place_free(x,y) {
		speed = 0;
	}
	
	// Spawn particles on the path
	if random(100) < trailChance {
		instance_create_depth(x,y,-1,objBloodParticle);
	}
	
	// Scale
	drawXScale = 1+speed*0.8;
}
