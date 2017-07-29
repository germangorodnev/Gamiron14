// check click
if (oControl.key[KEY.MOUSE_LEFT] == 0)
{
    var clickCar = gameControllerGotCarClick();
}
if (oControl.key[KEY.SWITCH])
{
    playerGUISetSelectedCar(oPlayerCar.id);
}

