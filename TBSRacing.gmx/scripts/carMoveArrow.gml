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
    var angleOld = phy_rotation;
    if (!angleEqual)
    {
        //var adiff = angle_difference(phy_rotation, -arrowDir);
        //angleAdd = max((abs(adiff) / 180) * angleTorque, .1);
        
        //phy_rotation = angleRotate(phy_rotation, -arrowDir, angleTorque);
        var signMult = (-1 + 2 * (phy_speed < 0));
        var ad = angle_difference(phy_rotation, arrowDir * signMult);
        if (abs(ad) > 5)
            physics_apply_torque((angleTorque * 350) * -sign(ad));
        //else
            //phy_rotation = signMult * arrowDir;
        //if (phy_rotation == -arrowDir)
            //angleEqual = 1;
    }
    else
    {
        angleAdd = approach(angleAdd, 0, .05);
        phy_rotation += angleAdd; 
        if (angleAdd <= .05 )
            phy_rotation = -arrowDir;
    }
    //if (phy_rotation == -arrowDir
    //    && angleOld != phy_rotation)
        //physics_apply_force(phy_position_x, phy_position_y, -lengthdir_x(.2, phy_linear_velocity_x),
        //    -lengthdir_y(.2, phy_linear_velocity_y));
            
    //if (phy_rotation == median(-arrowDir - .5, phy_rotation, -arrowDir + .5))
    //    phy_rotation = -arrowDir;
    dx = lengthdir_x(spd, -phy_rotation);
    dy = lengthdir_y(spd, -phy_rotation);
}
else
{
    dx = phy_speed_x;
    dy = phy_speed_y;
    //physics_apply_force(phy_position_x, phy_position_y, -lengthdir_x(.05, phy_linear_velocity_x),
    //    -lengthdir_y(.05, phy_linear_velocity_y));
}

//carKillLateralVelocity();

physics_apply_force(phy_position_x, phy_position_y, dx, dy);  
//physics_apply_angular_impulse(.1 * phy_inertia * -sign(phy_angular_velocity));
carParticlesGenerate();
carCollideWalls();

