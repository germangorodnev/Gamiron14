if (!global.debug)
    exit;
physics_world_draw_debug(phy_debug_render_coms | phy_debug_render_core_shapes);
physics_draw_debug();
draw_line_width_colour(phy_position_x, phy_position_y, targetId.pointX, targetId.pointY, 3, c_red, c_red);
// params
draw_set_colour(c_white);
draw_set_font(fSpeed);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_colour(phy_position_x + 20, phy_position_y - 40, "Speed: " + string(spd) + "; Speed rl: " + string(phy_speed), 
    c_black, c_black, c_black, c_black, 1);
draw_text_colour(phy_position_x + 20, phy_position_y - 20, "Percent: " + string(spdDesiredPercent), 
    c_black, c_black, c_black, c_black, 1);
draw_text_colour(phy_position_x + 20, phy_position_y, "Angle: " + string(phy_rotation), 
    c_black, c_black, c_black, c_black, 1);
draw_text_colour(phy_position_x + 20, phy_position_y + 20, "Spd Desired: " + string(spdDesired), 
    c_black, c_black, c_black, c_black, 1);
    
draw_line_width_colour(phy_position_x, phy_position_y, 
    phy_position_x + lengthdir_x(15, phy_rotation),
    phy_position_y + lengthdir_y(15, phy_rotation),
    3, c_blue, c_blue);

draw_line_width_colour(phy_position_x, phy_position_y, 
    phy_position_x + lengthdir_x(40, -phy_speed_x),
    phy_position_y + lengthdir_y(40, -phy_speed_y),
    3, c_green, c_green);
    

