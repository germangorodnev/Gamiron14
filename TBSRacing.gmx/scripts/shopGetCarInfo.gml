var _arr, pcount = 3;
_arr[pcount] = 0;
_arr[2] = 0;
_arr[3] = 0;
switch (argument[0])
{
case CARS.__ORANGE:
    _arr[0] = sPlayerCar3;
    _arr[1] = 1;
    break;
case CARS.__MINI_VAN:
    _arr[0] = sPlayerCar1;
    _arr[1] = 1;
    break;
case CARS.__MINI_TRUCK:
    _arr[0] = sPlayerCar2;
    _arr[1] = 1;
    break;
case CARS.__SCOOL_BUS:
    _arr[0] = sPlayerCar4;
    _arr[1] = .6;
    _arr[2] = 22;
    break;
}

return _arr;
