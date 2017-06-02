/// @description scr_target_custom(target,n)
/// @function scr_target_custom
/// @param target
/// @param n

/*
 - With this script you can make your own custom targeting system.
 - The only things that need to be changed are the lines that have comments next to them.
 - For easy changing of variable names press "Ctrl" + "F" to open up the find and replace panel
from there, change the names "example_list", "example_value", and "best" to whatever names you want.
 - If you want to make a script to find the best of something, change the sort to "False".
 - If you want to make a script to find the worst of something, change the sort to "True".
 - The "example_value" is a value that should be inside your enemy object. 

 Overview of the script and how it works:
 The Script works by first, placing all of the enemies into an array list.
 Then the script find all of the enemies inside the range, and then putting those enemies into an inrange DS List
 The script then also adds in the value you want to check for such as "HP" and putting that into its own DS List
 Then the script sorts the value list(HP in this case) in either acending or descending order. (acending to find the worst, decending to find the best)
 Next the script matches the inrange list with the value list and then puts the value into the ordered inrange list (Best in this case)
 Next the script does some error checking with the "n" value. It makes sure that "n" cant go over the number of enemies in range and not below 1.
 Then it sets the target to the first entry in the DS List minus whatever "n" value was provided
 If the there is no enemy at that position, it then sets the target to our own ID
 Lastly, all of the DS Lists are destroyed
 If there are no enemies on the screen then the target is defaulted to our ID and the DS Lists are destroyed.
 
 
 
 
 IF YOU NEED ANY HELP WHATSOEVER FEEL FREE TO CONTACT ME AT "Toxicmony@gmail.com" AND I WILL TRY TO GET BACK TO YOU AS SOON AS POSSIBLE!
 (If you do contact me, send me the code you are having trouble with, the error message, or the entire project... whatever is most easy for you)

*/


var e = argument0;          // Enemy to target
var n = argument1;          // Target Position

inrange = ds_list_create();
example_list = ds_list_create();    // Create the "example_list" DS List
best = ds_list_create();            // Create the "best" Ds List

if (instance_number(e) > 0) {
    for (var i = 0; i < instance_number(e); i++) {
        var currentinst = instance_find(e, i);
        enemy[i] = currentinst;
    }
    
    for (var i = 0; i < array_length_1d(enemy); i++) {
        var currentinst = instance_find(e, i);
        var distance = point_distance(x,y,currentinst.x,currentinst.y);
        if (distance <= range) {
            ds_list_add(inrange, currentinst);
            ds_list_add(example_list, currentinst.example_value);                // Change "Example_list" to whatever list you have, and change "Example_value" to whatever value you want to check
        }
    }
    ds_list_sort(example_list, false);                                           // If you want the "best" of something, change this to false, if you want the worst, change this to true
    
    for (var i = 0; i < array_length_1d(enemy); i++) {
        for (var j = 0; j < array_length_1d(enemy) j++) {
            var currentinst = ds_list_find_value(inrange, j);
            var example_value = currentinst.example_value;                  // Change "example_value" to whatever value you want to check for
            if (ds_list_find_value(example_list, i) == example_value) {     // Change "example_list" to the name of your list, and change the "example_value" to what value you want to check for
                ds_list_add(best, currentinst);                             // Change "best" to the name of your list
            }
        }
    }
    if (ds_list_size(inrange) < n) n = ds_list_size(inrange);
    if (n < 1) n = 1;    
    target = ds_list_find_value(best, n - 1);
    if (is_undefined(target)) target = id;
    ds_list_destroy(inrange);
    ds_list_destroy(example_list);                                     // Destroy the "example_list" DS List
    ds_list_destroy(best);                                             // Destroy the "best" DS List
    return target;          

} else {
    target = id;         
    ds_list_destroy(inrange);  
    ds_list_destroy(example_list);   // Destroy the "example_list" DS List
    ds_list_destroy(best);           // Destroy the "best" DS List
    return target;          
}
