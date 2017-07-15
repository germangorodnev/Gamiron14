switch (guistate)
{
case GUI_STATES.__GUI: // just move the mouse, nothing special about path
    if (!systemMouseInGUI())
    {
        systemCursorSet(sCursorPointer);
        if (key[KEY.MOUSE_LEFT] == 0)
        {
            var clickCar = gameControllerGotCarClick();
        }
    }  
    else
    {
        // we're on the gui zone
        systemCursorSet(sCursorPointer);
    }      
    break;
    
case GUI_STATES.__PATH_EDIT:
    if (!systemMouseInGUI())
    {
        systemCursorSet(sCursorPointEdit);
        if (key[KEY.MOUSE_LEFT] == 0)
        {
            // check the points
            var f = 0;
            for (var i = 0, pc = path_get_number(pathId); i < pc; i++)
            {
                var px = path_get_point_x(pathId, i),
                    py = path_get_point_y(pathId, i);
                if (point_in_circle(mouse_x, mouse_y, px, py, pathPointRad * 1.5))
                {
                    // we now track this point, move it
                    pathPointTrack = i;
                    f = 1;
                    break;
                }
            }
            if (f)
            {
                // found point to move
            }
            else
            {
                // add new to the end and move it
                with (selectedCar)
                {
                    carPathAddPointToTheEnd(mouse_x, mouse_y);
                }
                pathPointTrack = path_get_number(pathId) - 1;
            }
        }
        else if (key[KEY.MOUSE_LEFT] == 1)
        {
            if (pathPointTrack != -1)
            {
                // move it
                path_change_point(pathId, pathPointTrack, mouse_x, mouse_y, path_get_speed(pathId, pathPointTrack));
            }
        }
        else if (key[KEY.MOUSE_LEFT] == 2) // rel
        {
            pathPointTrack = -1;
        }
    }
    else
    {
        systemCursorSet(sCursorPointer);        
        // PATH DRAWING WHILE ON GUI WARNING
    }
    break;
    
case GUI_STATES.__PATH_ERASE:
    if (!systemMouseInGUI())
    {
        systemCursorSet(sCursorPointErase);
        if (key[KEY.MOUSE_LEFT] == 0)
        {
            // check the points
            for (var i = 0, pc = path_get_number(pathId); i < pc; i++)
            {
                var px = path_get_point_x(pathId, i),
                    py = path_get_point_y(pathId, i);
                if (point_in_circle(mouse_x, mouse_y, px, py, pathPointRad * 1.5))
                {
                    // we now delete it
                    path_delete_point(pathId, i);
                    break;
                }
            }
        }
    }
    else
        systemCursorSet(sCursorPointer);        
    break;
}


