///carMoveDirection(dir)
// rotate
// now move
var dx = lengthdir_x(spd, argument[0]),
    dy = lengthdir_y(spd, argument[0]);

if (!brake)    
    physics_apply_force(phy_position_x, phy_position_y, dx, dy);
    

carParticlesGenerate();
carCollideWalls();
