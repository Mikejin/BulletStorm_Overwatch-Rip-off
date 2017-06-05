/// @description  scr_target_last(target,n)被改过的
/// @function  scr_target_last
/// @param target
/// @param n

var e = argument0;          // Enemy to target
var n = argument1;          // Target Position

inrange = ds_list_create(); // Create the "Inrange" DS List

if (instance_number(e) > 0) {                       // Make sure there are atleast enemies on the screen
    for (var i = 0; i < instance_number(e); i++) {  
        var currentinst = instance_find(e, i);      // Get the ID of the current enemy
        enemy[i] = currentinst;                             // Put that enemy in an "enemy" Array
    }
    
    for (var i = 0; i < array_length_1d(enemy); i++) {
        var currentinst = instance_find(e, i);                  // Get the ID of the current enemy
        var distance = point_distance(x,y,currentinst.x,currentinst.y); // Get the distance from the tower to the current enemy
        if (distance <= range) and !collision_line(x,y,currentinst.x,currentinst.y,objBarrierPar,true,true) 
		and currentinst.team != belongsTo.team and place_meeting(x,y,currentinst)
		and currentinst.alive = true
		{                                        // Check to see if the enemy is in range
            ds_list_add(inrange, currentinst);                          // Add the enemy in the "inrange" Ds List
        }
    }
    if (ds_list_size(inrange) < n) n = ds_list_size(inrange);           // If "n" is greater than the ammount of enemies, set "n" to the number of emeis 
    if (n < 1) n = 1;                                                   // if "n" is less than 1, set "n" to 1
    target = ds_list_find_value(inrange, ds_list_size(inrange) - n);    // Set the target to the last  enemy in the list minus the "n" value
    if (is_undefined(target)) target = noone;                              // If there is no enemy at that position, set the target to our own ID
    ds_list_destroy(inrange);                                           // Destroy the "inrange" DS list
    return target;                                                      // Return the Target
} else {
    target = noone;                // Set the target to our own ID because there are no enemies in range
    ds_list_destroy(inrange);   // Destroy the "inrange" DS List
    return target;              // Return the target
}
