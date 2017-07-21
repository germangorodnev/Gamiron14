var pathname = -1;
switch (room)
{
case rEmbankment:
    pathname = pEmbankment1Human1;
    break;  
}

/*path = path_add();
path_append(path, asset_get_index(pathname));
if (choose(0, 1))
    path_reverse(path);*/
var pNumb = irandom(path_get_number(pathname) - 1);
phy_position_x = path_get_point_x(pathname, pNumb);
phy_position_y = path_get_point_y(pathname, pNumb);
pointX = irandom_range(150, room_width - 150);
pointY = irandom_range(150, room_height - 150);
humanSetState(HUMAN_STATES.__WANDER);

visible = 1;
