switch (state)
{
case EN_CAR_ST.__INACTIVE:
case EN_CAR_ST.__MOEV_IN_DIRECTION:
    var nearest = instance_nearest(phy_position_x, phy_position_y, oPlayerCar);
    var dist = distance_to_object(nearest),
        pdir = point_direction(phy_position_x, phy_position_y, 
            nearest.phy_position_x, nearest.phy_position_y)
    if (dist < 450)
    {
        carSetDesiredSpeedByPercent(0);
        arrowDir = pdir - 90;
        // weapons
        with (weapon[0])
        {
            weaponSetTargetDirection(pdir);
            weaponSetShootNecessity(1);
        }
    }
    else
    {
        carSetDesiredSpeedByPercent(clamp(dist / 400, .18, 1));
        arrowDir = pdir;
        with (weapon[0])
        {
            weaponSetTargetDirection(pdir + irandom(90) * choose(-1, 1));
            weaponSetShootNecessity(0);
        }
    }
    if (abs(angle_difference(phy_rotation, -arrowDir)) >= 140)
        carSetDesiredSpeedByPercent(.6);
    
    break;
    break;
case EN_CAR_ST.__EVADE_OBJECT:
    break;
case EN_CAR_ST.__PURSUIT_OBJECT:
    break;
case EN_CAR_ST.__MOVE_TO_POINT:
    break;
}
