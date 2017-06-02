if !instance_exists(product) and generating = false
{
	generating = true;
	alarm[0] = cooldown;
}