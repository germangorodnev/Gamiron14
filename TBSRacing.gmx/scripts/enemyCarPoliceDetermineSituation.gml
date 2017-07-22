switch (state)
{
case EN_CAR_ST.__INACTIVE:
    var nearest = instance_nearest(phy_position_x, phy_position_y, oPlayerCar);
    arrowDir = point_direction(phy_position_x, phy_position_y, 
        nearest.phy_position_x, nearest.phy_position_y);
    var dist = distance_to_object(nearest);
    if (dist < 300)
        carSetDesiredSpeedByPercent(.05);
    else
        carSetDesiredSpeedByPercent(clamp(dist / 400, .36, 1));
    if (abs(angle_difference(phy_rotation, -arrowDir)) >= 140)
        carSetDesiredSpeedByPercent(.6);
    break;
case EN_CAR_ST.__MOEV_IN_DIRECTION:
    break;
case EN_CAR_ST.__EVADE_OBJECT:
    break;
case EN_CAR_ST.__PURSUIT_OBJECT:
    break;
case EN_CAR_ST.__MOVE_TO_POINT:
    break;
}
