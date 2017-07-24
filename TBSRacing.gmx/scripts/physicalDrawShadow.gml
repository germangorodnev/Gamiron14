shader_set(shdBlack);
var pr = -phy_rotation;
draw_sprite_ext(sprite_index, image_index, phy_position_x + lengthdir_x(-1, pr), phy_position_y + lengthdir_y(-1, pr), 1.015, 1.015, pr, c_black, image_alpha);
shader_reset();
