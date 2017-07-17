if (phy_speed > 1)
{
    part_emitter_region(psys, pem, x - 1, x + 1, y - 1, y + 1, ps_shape_rectangle, ps_distr_gaussian);
    inertiaDir = point_direction(x, y, x + phy_speed_x, y + phy_speed_y);
    forwardDir = point_direction(x, y, x + lengthdir_x(50, -phy_rotation), y + lengthdir_y(50, -phy_rotation));
    angleDif = abs(angle_difference(forwardDir, inertiaDir));
    if (angleDif > 8)
    {
        // drift
        part_type_orientation(ptyre, -phy_rotation, -phy_rotation, 0, 0, 0);
        part_emitter_burst(psys, pem, ptyre, 20);
    }
}
