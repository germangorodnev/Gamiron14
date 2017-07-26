///gameGetCarIndepthInf(car)
var _arr, sz = 3;
_arr[sz] = 0;
var _winf = systemGetPhrase(5, argument[0]);
switch (argument[0])
{
case CARS.__ORANGE:
    _arr[0] = _winf[0];
    _arr[1] = 1;
    _arr[2] = 100000;
    _arr[3] = _winf[1];
    break;
case CARS.__MINI_TRUCK:
    _arr[0] = _winf[0];
    _arr[1] = 1;
    _arr[2] = 60000;
    _arr[3] = _winf[1];
    break;
case CARS.__MINI_VAN:
    _arr[0] = _winf[0];
    _arr[1] = 2;
    _arr[2] = 70000;
    _arr[3] = _winf[1];
    break;
case CARS.__SCOOL_BUS:
    _arr[0] = _winf[0];
    _arr[1] = 3;
    _arr[2] = 75000;
    _arr[3] = _winf[1];
    break;
}
return _arr;
