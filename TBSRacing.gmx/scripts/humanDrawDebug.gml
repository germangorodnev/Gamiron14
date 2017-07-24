if (!global.debug)
    exit;
physics_draw_debug();
with (collider)
    physics_draw_debug();
draw_line_width_colour(phy_position_x, phy_position_y, 
    pointX, pointY, 3, c_red, c_red);
