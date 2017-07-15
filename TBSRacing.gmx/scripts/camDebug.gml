if (!global.debug)
    exit;
draw_rectangle_colour(view_xview + mdeadx1, view_yview + mdeady1, 
    view_xview + mdeadx2, view_yview + mdeady2, c_red, c_red, c_red, c_red, 1);
draw_circle_colour(x, y, 6, c_red, c_red, 0);
