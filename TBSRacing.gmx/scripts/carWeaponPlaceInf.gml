///carWeaponPlaceInf(car, slot, weap)
var _arr;
var ll, aa, 
    obj,
    oxoff = sprite_get_xoffset(sprite_index),
    oyoff = sprite_get_yoffset(sprite_index);
switch (argument[0])
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
    switch (argument[1])
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
    switch (argument[1])
    {
    case 0:
        ll = 99.5;
        aa = 0;    
        break;
    case 1:
        ll = 42;
        aa = 0;
        break;
    case 2:
        ll = 18;
        aa = 0;
        break;
    }
    break;
}

switch (argument[2])
{
case WEAPONS.__SIMPLE:
    _arr[2] = sGunSimple;
    break;
case WEAPONS.__ROCKET:
    _arr[2] = sGunRocket;
    break;
case WEAPONS.__SHIELD:
    _arr[2] = sGunShield;
    break;
}

_arr[0] = ll;
_arr[1] = aa;
return _arr;
