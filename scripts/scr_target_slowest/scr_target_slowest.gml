/// @description  scr_target_slowest(target,n);
/// @function  scr_target_slowest
/// @param target
/// @param n

var e = argument0;          // Enemy to target
var n = argument1;          // Target Position

inrange = ds_list_create();   // Create the "inrange" DS List
spd_list = ds_list_create();  // Create the "spd_list" DS List
slowest = ds_list_create();   // Create the "slowest" Ds List

if (instance_number(e) > 0) {                       // Make sure there are atleast enemies on the screen
    for (var i = 0; i < instance_number(e); i++) {
        var currentinst = instance_find(e, i);      // Get the ID of the current enemy
        enemy[i] = currentinst;                             // Put that enemy in an "enemy" array
    }
    
    for (var i = 0; i < array_length_1d(enemy); i++) {
        var currentinst = instance_find(e, i);                      // Get the ID of the current enemy
        var distance = point_distance(x,y,currentinst.x,currentinst.y);     // Get the distance from the tower to the current enemy
        if (distance <= range) {                                            // Check to see if the enemy is in range
            ds_list_add(inrange, currentinst);                              // Add the enemy in the "inrange" DS List
            ds_list_add(spd_list, currentinst.spd);                         // Add the spd in the "spd_list" DS List
        }
    }
    ds_list_sort(spd_list, true);                                            // Sort the DS list in acending order
    
    for (var i = 0; i < array_length_1d(enemy); i++) {
        for (var j = 0; j < array_length_1d(enemy) j++) {
            var currentinst = ds_list_find_value(inrange, j);               // Get the ID of the current enemy
            var spd = currentinst.spd;                                      // Get the distance of the current enemy
            if (ds_list_find_value(spd_list, i) == spd) {                   // Check the "spd_list" DS list for the distance of the current enemy
                ds_list_add(slowest, currentinst);                          // If it matches then add the current enemy into the slowest array
            }
        }
    }
    if (ds_list_size(inrange) < n) n = ds_list_size(inrange);               // if "n" is greater than the ammount of enemis, set "n" to the number of enemies.
    if (n < 1) n = 1;                                                       // If "n" is less than 1, set "n" to 1.
    target = ds_list_find_value(slowest, n - 1);                            // Set the target to the slowest enemy plus "n"
    if (is_undefined(target)) target = id;                                  // If there is no enemy at that position, set the target to our own ID
    ds_list_destroy(inrange);                                               // Destroy the "inrange" DS List
    ds_list_destroy(spd_list);                                              // Destroy the "spd_list" DS List
    ds_list_destroy(slowest);                                               // Destroy the "slowest" DS List
    return target;                                                          // Return the target

} else {
    target = id;                // Set the target to our ID because there are no enemies in range
    ds_list_destroy(inrange);   // Destroy the "inrange" Ds List
    ds_list_destroy(spd_list);  // Destroy the "spd_list" DS List
    ds_list_destroy(slowest);   // Destroy the "slowest" DS List
    return target;              // return the target
}
