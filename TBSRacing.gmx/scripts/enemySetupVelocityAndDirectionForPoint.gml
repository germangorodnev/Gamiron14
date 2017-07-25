///enemySetupVelocityAndDirectionForPoint(x, y)
var xp = argument[0],
    yp = argument[1];
    
var pdir = point_direction(phy_position_x, phy_position_y, xp, yp),
    dist = distance_to_point(xp, yp);
carSetDesiredSpeedByPercent(clamp(dist / 360 * .5, .5, .9));
arrowDir = pdir;
if (phy_speed > .3)
    arrowDir -= 35; // for sake

