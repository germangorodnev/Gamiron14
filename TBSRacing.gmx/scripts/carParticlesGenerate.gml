if (phy_speed > 1)
{
    part_emitter_region(psys, pem, x - 1, x + 1, y - 1, y + 1, ps_shape_rectangle, ps_distr_gaussian);
    inertiaDir = point_direction(x, y, x + phy_speed_x, y + phy_speed_y);
    forwardDir = point_direction(x, y, x + lengthdir_x(50, -phy_rotation), y + lengthdir_y(50, -phy_rotation));
    angleDif = abs(angle_difference(forwardDir, inertiaDir));
    if (angleDif > 12)
    {
        // drift
        part_type_orientation(ptyre, -phy_rotation, -phy_rotation, 0, 0, 0);
        part_emitter_burst(psys, pem, ptyre, 1);
        
        // if player -- add scores
        if (team == 0)
            driftScoreAppend(2);
        
        // smoke
        part_type_direction(smoke, -inertiaDir, -inertiaDir, 0, 0);
        part_emitter_burst(psys, pem, smoke, 1);
    }
    // zone collision
    var zone = instance_place(phy_position_x, phy_position_y, oMaterialMask);
    if (zone != noone)
    {   
        switch (zone.zone)
        {
        case ZONES.__GRASS:
            // some dirt
            part_type_direction(dirt, phy_rotation, phy_rotation, 0, 0);
            part_emitter_burst(psys, pem, dirt, 1);        
            break;
        }
    }
}

