state = argument[0];

switch (state)
{
case WEAPON_STATES.__SIMPLE_ATTACK:
    shotTmr = shotTmrStep;
    // create bullet
    var bullet = gameBulletCreate(
        phy_position_x + lengthdir_x(60, -phy_rotation),
        phy_position_y + lengthdir_y(60, -phy_rotation),
        BULLETS.__SIMPLE);
    bullet.phy_rotation = phy_rotation;
    with (bullet)
        physics_apply_local_impulse(0, 0, 1500, 0);
        
    canShoot = canShootTmrSteps;
    //needShoot = 0;
    break;

case WEAPON_STATES.__ROCKET_ATTACK:
    shotTmr = shotTmrStep;
    // create bullet
    var bullet = gameBulletCreate(
        phy_position_x + lengthdir_x(ldll, -phy_rotation + lddir),
        phy_position_y + lengthdir_y(ldll, -phy_rotation + lddir),
        BULLETS.__ROCKET);
    bullet.phy_rotation = phy_rotation;

        
    canShoot = canShootTmrSteps;
    //needShoot = 0;
    break;
}
