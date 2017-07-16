///carWeaponSet(slot, WEAPONS weapon)
var slx, sly, 
    obj,
    oxoff = sprite_get_xoffset(sprite_index),
    oyoff = sprite_get_yoffset(sprite_index);
switch (type)
{
case CARS.__ORANGE:
    // 1 slot
    switch (argument[0])
    {
    case 0: 
        slx = 62 - oxoff;
        sly = 27 - oyoff;
        break;
    }
}

switch (argument[1])
{
case WEAPONS.__SIMPLE:
    obj = oWeaponSimple;
    break;
}
var pos = weaponsCount++;
weapon[pos] = instance_create(phy_position_x + slx, phy_position_y + sly, obj);
weapon[pos].xoff = slx;
weapon[pos].yoff = sly;
