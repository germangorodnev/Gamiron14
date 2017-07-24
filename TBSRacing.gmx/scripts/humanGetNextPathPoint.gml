pathInd++;
if ((pathInd >= path_get_number(path)) 
    && (!path_get_closed(path)))
{
    instance_destroy();
}
else
{
    pointX = path_get_point_x(path, pathInd);
    pointY = path_get_point_y(path, pathInd);
    humanSetState(HUMAN_STATES.__MOVE_POINT);
}

