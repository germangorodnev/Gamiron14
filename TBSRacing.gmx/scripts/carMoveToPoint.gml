///carMoveToPoint(x, y)
var px = argument[0],
    py = argument[1];
// rotate
var dir = point_direction(phy_position_x, phy_position_y, px, py);
    //dist = point_distance(phy_position_x, phy_position_y, px, py);
phy_rotation = angleRotate(phy_rotation, -dir, angleTorque);
//phy_rotation += sqrt(sqr(phy_speed_x) + sqr(phy_speed_y)) /10;
//var turn_direction = angle_difference(phy_rotation, dir);
//phy_rotation += sign(turn_direction) * angleTorque;
//dDirTest = -dir;
//phy_rotation = -dir;

/*if (phy_rotation != dir)
{
    physics_apply_torque(100);
}*/

dDir = -dir;

// now move
var dx = lengthdir_x(spd, -phy_rotation),
    dy = lengthdir_y(spd, -phy_rotation);
    
// = arctan2(phy_speed_y, phy_speed_x);
    
//physics_apply_force(x, y, dx, dy);

physics_apply_force(phy_position_x, phy_position_y, dx, dy);
//phy_angular_velocity = 0;


