// get path
pathMove = path_add();
switch (room)
{
case rNightRace1:
    pathCopy = asset_get_index("pNightStreet1AI" + string(irandom_range(1, 1)));
    path_append(pathMove, pathCopy);
    path_set_closed(pathMove, path_get_closed(pathCopy));
    break;
case rNightRace2:
    pathCopy = asset_get_index("pNightStreet2AI" + string(irandom_range(1, 1)));
    path_append(pathMove, pathCopy);
    path_set_closed(pathMove, path_get_closed(pathCopy));
    break;
}

// create the point to follow to
targetId = instance_create(x, y, oCarTarget);

// start
enemyPathGetNextPoint();
