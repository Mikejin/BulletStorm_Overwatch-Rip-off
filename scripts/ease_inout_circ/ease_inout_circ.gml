/// @description ease_inout_circ(time, start, change, duration)
/// @function ease_inout_circ
/// @param time
/// @param  start
/// @param  change
/// @param  duration

/*
you need to set up a timer for the "time" variable

time        = the point in time along the graph e.g. at the start 0
start       = value of the starting point e.g. at the start 100
change      = the change between starting value and end value e.g. 50 so the end value would be 150
duration    = amount of "time" it should take to reach the end value e.g. 30 
*/

argument0 /= argument3 * 0.5;

if (argument0 < 1)
{
    return argument2 * 0.5 * (1 - sqrt(1 - argument0 * argument0)) + argument1;
}

argument0 -= 2;
return argument2 * 0.5 * (sqrt(1 - argument0 * argument0) + 1) + argument1;
