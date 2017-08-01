///enemySetState(EN_CAR_ST new)
state = argument[0];
switch (state)
{
case EN_CAR_ST.__INACTIVE:
    
    break;
    
case EN_CAR_ST.__MOVE_TO_POINT:

    break;
    
case EN_CAR_ST.__DIE:
    carSetDesiredSpeedByPercent(0);
    // create some expl
    var xoff = sprite_get_xoffset(sprite_index),
        yoff = sprite_get_yoffset(sprite_index),
        rldir = -phy_rotation;
    var xmin = phy_position_x - lengthdir_x(xoff, rldir),
        ymin = phy_position_y - lengthdir_y(yoff, rldir);
    var xmax = xmin + sprite_width,
        ymax = ymin + sprite_height;
    repeat(irandom_range(7, 12))
    {
        var ex = instance_create(irandom_range(xmin, xmax), irandom_range(ymin, ymax), oExplosion);
        ex.dmg = 6;
        ex.team = team;
    }
    instance_destroy();
    break;
}
