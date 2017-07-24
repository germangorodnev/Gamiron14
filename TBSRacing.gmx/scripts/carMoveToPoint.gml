///carMoveToPoint(x, y)
var px = argument[0],
    py = argument[1];
// rotate
var dir = point_direction(phy_position_x, phy_position_y, px, py);
    //dist = point_distance(phy_position_x, phy_position_y, px, py);
if (!brake)
    phy_rotation = angleRotate(phy_rotation, -dir, angleTorque);

dDir = -dir;

// now move
var dx = lengthdir_x(spd, -phy_rotation),
    dy = lengthdir_y(spd, -phy_rotation);
    
//if (!brake)
    physics_apply_force(phy_position_x, phy_position_y, dx, dy);
phy_angular_velocity = 0;

carParticlesGenerate();
carCollideWalls();
