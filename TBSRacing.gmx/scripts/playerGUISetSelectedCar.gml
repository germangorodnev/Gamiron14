///playerGUISetSelectedCar(car id)
with (oGameController)
{
    selectedCar = argument[0];
    if (selectedCar != noone)
    {
        pathId = selectedCar.pathMove;
        for (var i = 0; i < playerCarsCnt; i++)
        {
            if (playerTeam[i] == selectedCar)
            {
                selectedCarInd = i;
                break;
            }
        }
        gameControllerSubstateSet(SUBSTATES.__CAR_MOVE);
        gameControllerGuistateSet(GUI_STATES.__GUI);
        camSetTarget(selectedCar.phy_position_x, selectedCar.phy_position_y);
    }
    else
    {
        pathId = -1;
        selectedCarInd = -1;
        gameControllerSubstateSet(SUBSTATES.__NONE);
    }
}
