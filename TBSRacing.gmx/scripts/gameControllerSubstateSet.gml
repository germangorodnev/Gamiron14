///gameControllerSubstateSet(SUBSTATES new)
with (oGameController)
{
    substate = argument[0];
    // resets
    with (oEngineArrow)
        instance_destroy();
    with (oButtonCarGUIBrake)
        instance_destroy();
    with (oButtonCarGUIEditPoints)
        instance_destroy();
    with (oButtonCarGUIDeletePoints)
        instance_destroy();
        
    switch (substate)
    {
    case SUBSTATES.__NONE:
        break;
    case SUBSTATES.__CAR_WEAPONS:
        break;
    case SUBSTATES.__CAR_MOVE:
        instance_create(0, 0, oEngineArrow);
        instance_create(0, 0, oButtonCarGUIBrake);
        instance_create(0, 0, oButtonCarGUIEditPoints);
        instance_create(0, 0, oButtonCarGUIDeletePoints);
        break;
    }
}
