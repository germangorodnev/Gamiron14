///carMoveArrow()
// rotate
// now move
var dx, dy;
if (!brake)
{
    //var df = -arrowDir - phy_rotation;
    //if (abs(phy_angular_velocity) < 3)
    //phy_rotation += (min(abs(df), angleIncr) * sign(df)); 
    //var angleval = angleTorque;
    //if (phy_speed < .05)
    //    angleval = 0;        
    var angleval = angleTorque * min(1, abs(phy_speed) / .8);
    phy_rotation = angleRotate(phy_rotation, -arrowDir, angleval);
    //if (phy_rotation == median(-arrowDir - .5, phy_rotation, -arrowDir + .5))
    //    phy_rotation = -arrowDir;
    dx = lengthdir_x(spd, -phy_rotation);
    dy = lengthdir_y(spd, -phy_rotation);
}
else
{
    dx = phy_speed_x;
    dy = phy_speed_y;
    physics_apply_force(phy_position_x, phy_position_y, -lengthdir_x(.05, phy_linear_velocity_x),
        -lengthdir_y(.05, phy_linear_velocity_y));
}

physics_apply_force(phy_position_x, phy_position_y, dx, dy);  
physics_apply_angular_impulse(.1 * phy_inertia * -sign(phy_angular_velocity));
carParticlesGenerate();
carCollideWalls();

