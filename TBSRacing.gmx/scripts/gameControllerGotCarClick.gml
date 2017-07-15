// check the car
var curr = selectedCar;
with (oBaseCar)
{
    if (team == 0) // only our cars
    {
        if (carInMouse())
            if (curr != id)
            {
                playerGUISetSelectedCar(id);
                return 1;
            }
    }
}
if (curr = selectedCar && (curr != noone)) // nothing changed, maybe free position
{
    playerGUISetSelectedCar(noone);
    return 0;
}

