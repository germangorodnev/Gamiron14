switch (state)
{
case EN_CAR_ST.__INACTIVE:

    break;
    
case EN_CAR_ST.__MOVE_TO_POINT:
    // need to move to the point
    var pdir = point_direction(phy_position_x, phy_position_y, 
            targetId.phy_position_x, targetId.phy_position_y),
        dist = distance_to_object(targetId);
    carSetDesiredSpeedByPercent(clamp(dist / 450, .5, .9));
    arrowDir = pdir;
    if ((dist < POINT_RADIUS_PRECISION) 
        && (abs(angle_difference(
            -phy_rotation,
            point_direction(targetId.phy_position_x, targetId.phy_position_y,
                path_get_point_x(pathMove, pointId + 1), path_get_point_y(pathMove, pointId + 1)),
            )) <= 90))
    {
        path_delete_point(pathMove, pointId);
        if (path_get_number(pathMove))
        {
            enemyPathGetNextPoint();
            enemySetupVelocityAndDirectionForPoint(targetId.pointX, targetId.pointY);
        }
        else
        {
            carPathDelete();
            carSetState(PL_CAR_ST.__INACTIVE);
        }
    }
    break;
}
