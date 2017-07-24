///humanStartRandomMadePath([paht], [can reverse])
var _arr;
_arr[1] = 1; // invert chance
_arr[0] = -1; // path
for (var i = 0 ; i < argument_count; i++)
    _arr[i] = argument[i];

if (_arr[0] == -1)
{
    switch (room)
    {
    case rEmbankment:
        _arr[0] = asset_get_index("pEmbankment1Human" + string(irandom_range(2, 4)));
        break;
    case rField:
        _arr[0] = asset_get_index("pFieldHuman1");
        break;
    case rStreets1:
        _arr[0] = asset_get_index("pStreets1Human" + string(irandom_range(1, 2)));
        break;
    }
}
path = path_add();
path_set_closed(path, path_get_closed(_arr[0]));
path_append(path, _arr[0]);
if (choose(0, 1) && _arr[1])
    path_reverse(path);
phy_position_x = path_get_point_x(path, 0);
phy_position_y = path_get_point_y(path, 0);

humanGetNextPathPoint();
