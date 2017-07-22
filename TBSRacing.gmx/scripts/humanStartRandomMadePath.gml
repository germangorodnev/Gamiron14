var pname;
switch (room)
{
case rEmbankment:
    pname = asset_get_index("pEmbankment1Human" + string(irandom_range(2, 4)));
    break;
case rField:
    pname = asset_get_index("pFieldHuman1");
    break;
}
path = path_add();
path_append(path, pname);
if (choose(0, 1))
    path_reverse(path);
phy_position_x = path_get_point_x(path, 0);
phy_position_y = path_get_point_y(path, 0);

humanGetNextPathPoint();
