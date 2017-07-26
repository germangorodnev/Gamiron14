///shopGetWeaponInfo(weap)
var _arr, pcount = 3;
_arr[pcount] = 0;
_arr[2] = 0;
_arr[3] = 0;
switch (argument[0])
{
case WEAPONS.__SIMPLE:
    _arr[0] = sGunSimpleIco;
    _arr[1] = 1;
    break;
case WEAPONS.__ROCKET:
    _arr[0] = sGunRocketIco;
    _arr[1] = 1;
    break;
case WEAPONS.__SHIELD:
    _arr[0] = sGunShieldIco;
    _arr[1] = 1;
    break;
}

return _arr;
