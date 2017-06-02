/// scr_move(device)
var device = argument0;

// get_gamepad_input
xaxis = gamepad_axis_value(device, gp_axislh);
yaxis = gamepad_axis_value(device, gp_axislv);

magnitude = point_distance(0, 0, xaxis, yaxis);
if (magnitude > 1) magnitude = 1;
threshold = .2;


