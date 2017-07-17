///playerGUISetSelectedCar(car id)
with (oGameController)
{
    selectedCar = argument[0];
    if (selectedCar != noone)
    {
        pathId = selectedCar.pathMove;
        gameControllerSubstateSet(SUBSTATES.__CAR_MOVE);
        gameControllerGuistateSet(GUI_STATES.__GUI);
        camSetTarget(selectedCar.phy_position_x, selectedCar.phy_position_y);
    }
    else
    {
        pathId = -1;
        gameControllerSubstateSet(SUBSTATES.__NONE);
    }
}
