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

    var signMult = (-1 + 2 * (phy_speed < 0));
    var ad = angle_difference(phy_rotation, arrowDir * signMult),
        adabs = abs(ad);
    if (adabs > 10)
        physics_apply_torque((angleTorque * 350) * -sign(ad));
    else if (adabs > 7)
        physics_apply_torque((angleTorque * 50) * -sign(ad));
    else
        physics_apply_torque((angleTorque * 10) * -sign(ad));

    dx = lengthdir_x(spd, -phy_rotation);
    dy = lengthdir_y(spd, -phy_rotation);
}
else
{
    dx = lengthdir_x(spd, -phy_rotation);
    dy = lengthdir_y(spd, -phy_rotation);
    //physics_apply_force(phy_position_x, phy_position_y, -lengthdir_x(.05, phy_linear_velocity_x),
    //    -lengthdir_y(.05, phy_linear_velocity_y));
}


physics_apply_force(phy_position_x, phy_position_y, dx, dy);  
//physics_apply_angular_impulse(.1 * phy_inertia * -sign(phy_angular_velocity));
carKillLateralVelocity();
carParticlesGenerate();
carCollideWalls();

