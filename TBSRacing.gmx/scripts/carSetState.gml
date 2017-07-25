///carSetState(PL_CAR_ST new)
state = argument[0];
switch (state)
{
case PL_CAR_ST.__INACTIVE:
    carSetDesiredSpeedByPercent(0);
    break;
    
case PL_CAR_ST.__MOVE_TO_POINT:

    break;
}
