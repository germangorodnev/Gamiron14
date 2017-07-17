///carMoveArrow()
// rotate
// now move
var dx, dy;
if (!brake)
{
    phy_rotation = angleRotate(phy_rotation, -arrowDir, angleTorque);
    dx = lengthdir_x(spd, -phy_rotation);
    dy = lengthdir_y(spd, -phy_rotation);
}
else
{
    dx = lengthdir_x(spd, phy_linear_velocity_x);
    dy = lengthdir_y(spd, phy_linear_velocity_y);
}

physics_apply_force(phy_position_x, phy_position_y, dx, dy);
    

carParticlesGenerate();
carCollideWalls();

