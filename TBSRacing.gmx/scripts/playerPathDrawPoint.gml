///playerPathDrawPoint(path, number)
var p = argument[0], 
    n = argument[1];
draw_circle_colour(path_get_point_x(p, n), path_get_point_y(p, n), oGameController.pathPointRad, c_green, c_green, 0);

