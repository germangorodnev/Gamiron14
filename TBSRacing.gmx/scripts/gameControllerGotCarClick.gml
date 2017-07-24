// check the car
var curr = selectedCar, 
    flag = 0;
arrowBuild = 0;
with (oBaseCar)
{
    if (team == 0) // only our cars
    {
        if (carInMouse())
            if (curr != id)
            {
                playerGUISetSelectedCar(id);
                return id;
            }
            else
            {
                flag = 1;
                return id;
            }
    }
}
if (!flag)
    if (curr = selectedCar && (curr != noone)) // nothing changed, maybe free position
    {
        playerGUISetSelectedCar(noone);
        return noone;
    }
return noone;

