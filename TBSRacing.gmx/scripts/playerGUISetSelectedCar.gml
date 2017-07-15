///playerGUISetSelectedCar(car id)
with (oGameController)
{
    selectedCar = argument[0];
    if (selectedCar != noone)
    {
        pathId = selectedCar.pathMove;
        gameControllerSubstateSet(SUBSTATES.__CAR_MOVE);
        gameControllerGuistateSet(GUI_STATES.__GUI);
    }
    else
    {
        pathId = -1;
        gameControllerSubstateSet(SUBSTATES.__NONE);
    }
}
