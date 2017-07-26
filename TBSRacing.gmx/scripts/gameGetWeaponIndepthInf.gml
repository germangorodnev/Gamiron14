///gameGetWeaponIndepthInf(weapon)
var _arr, sz = 3;
_arr[sz] = 0;
var _winf = systemGetPhrase(4, argument[0])
switch (argument[0])
{
case WEAPONS.__SIMPLE:
    _arr[0] = _winf[0];
    _arr[1] = 4;
    _arr[2] = 15000;
    _arr[3] = _winf[1];
    break;
case WEAPONS.__ROCKET:
    _arr[0] = _winf[0];
    _arr[1] = 12;
    _arr[2] = 26000;
    _arr[3] = _winf[1];
    break;
case WEAPONS.__SHIELD:
    _arr[0] = _winf[0];
    _arr[1] = 12;
    _arr[2] = 40000;
    _arr[3] = _winf[1];
    break;
}
return _arr;
