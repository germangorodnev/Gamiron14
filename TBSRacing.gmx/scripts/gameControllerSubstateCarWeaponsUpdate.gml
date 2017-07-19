gameControllerSelectSignUpdate();

switch (guistate)
{
case GUI_STATES.__GUI: // just move the mouse, nothing special about path
    if (!systemMouseInGUI())
    {
        systemCursorSet(sCursorPointer);
        if (arrowBuild)
        {
            systemCursorSet(sCursorArrow);
            if (key[KEY.MOUSE_LEFT] == 1)
            {
                with (selectedCar)
                {
                    arrowDir = point_direction(phy_position_x, phy_position_y, mouse_x, mouse_y);
                }
            }
            else if (key[KEY.MOUSE_LEFT] == 2)
            {
                arrowBuild = 0;
            }
        }
        else if ((key[KEY.MOUSE_LEFT] == 0) 
            && (!position_meeting(mouse_x, mouse_y, oButtonEndTurn)))
        {
            var osel = selectedCar;
            var clickCar = gameControllerGotCarClick();
            if (clickCar == osel)
            {   
                arrowBuild = 1;
            }
            else
                arrowBuild = 0;
        }
    }  
    else
    {
        // we're on the gui zone
        systemCursorSet(sCursorPointer);
    }              
    break;
}
