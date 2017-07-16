///playerPathDrawLine(x1, y1, x2, y2)
var x1 = argument[0],
    y1 = argument[1], 
    x2 = argument[2], 
    y2 = argument[3];
var dir = point_direction(x1, y1, x2, y2),
    ww = 4,
    cc = c_gray,
    ll = 12;
draw_line_width_colour(x1, y1, x2, y2,  
    ww, cc, cc);
// arrow
draw_line_width_colour(x2, y2, x2 + lengthdir_x(ll, dir - 150), y2 + lengthdir_y(ll, dir - 150),
    ww, cc, cc);
draw_line_width_colour(x2, y2, x2 + lengthdir_x(ll, dir + 150), y2 + lengthdir_y(ll, dir + 150),
    ww, cc, cc);
