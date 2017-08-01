if (!objectInView())
    exit;
var sx = phy_position_x + lengthdir_x(flasherL, phy_rotation),
    sy = phy_position_y + lengthdir_y(flasherL, phy_rotation);
var ldx = lengthdir_x(flasherY, -phy_rotation + 90),
    ldy = lengthdir_y(flasherY, -phy_rotation + 90);
    
shader_set(shdRecolor);
shader_set_uniform_f(flasherColUni, 1, 1, 1, 1);
draw_sprite_ext(sLightPoint, 0, sx + ldx - view_xview, 
    sy + ldy - view_yview, 2, 2, 0, c_white, flasherAlpha[0]);
shader_reset();

shader_set(shdRecolor);
shader_set_uniform_f(flasherColUni, 1, .05, .05, 1);
draw_sprite_ext(sLightPoint, 0, sx - ldx - view_xview, 
    sy - ldy - view_yview, 2, 2, 0, c_white, flasherAlpha[1]);
shader_reset();

