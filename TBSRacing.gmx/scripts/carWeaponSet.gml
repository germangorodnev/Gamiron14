///carWeaponSet(slot, WEAPONS weapon)
var ll, aa, 
    obj,
    oxoff = sprite_get_xoffset(sprite_index),
    oyoff = sprite_get_yoffset(sprite_index);
switch (type)
{
case CARS.__ORANGE:
    // 1 slot
    ll = 0;
    aa = 0;
    break;
    
case CARS.__MINI_TRUCK:
    // 1 slot
    ll = 30;
    aa = 176;
    break;
    
case CARS.__MINI_VAN:
    // 2
    switch (argument[0])
    {
    case 0:
        ll = 46;
        aa = 178;    
        break;
    case 1:
        ll = 4;
        aa = -14;
        break;
    }
    break;
    
case CARS.__SCOOL_BUS:
    // 3
    switch (argument[0])
    {
    case 0:
        ll = 134;
        aa = 180;    
        break;
    case 1:
        ll = 75;
        aa = 180;
        break;
    case 2:
        ll = 17;
        aa = 180;
        break;
    }
    break;

case CARS.__POLICE:
    // 1 slot
    ll = 12;
    aa = 175;
    break;
    
case CARS.__BLACKS_JEEP:
    // 1 slot
    ll = 19;
    aa = 177;
    break;
}

switch (argument[1])
{
case WEAPONS.__SIMPLE:
    obj = oWeaponSimple;
    break;
case WEAPONS.__ROCKET:
    obj = oWeaponRocket;
    break;
case WEAPONS.__SHIELD:
    obj = oWeaponShield;
    break;
}
var pos = argument[0];
if (argument[0] == -1)
{
    for (var i = 0; i < weaponsCount; i++)
    {
        if (weapon[i] == noone)
        {
            pos = i;
            break;
        }
    }
}
weapon[pos] = instance_create(phy_position_x + lengthdir_x(ll, phy_rotation + aa), 
    phy_position_y + lengthdir_y(ll, phy_rotation + aa), obj);
weapon[pos].lenoff = ll;
weapon[pos].angleoff = aa;
weapon[pos].depth = depth - 2;
weapon[pos].car = id;
