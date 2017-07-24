switch (substate)
{
case SUBSTATES.__CAR_MOVE:
    gameControllerSubstateSet(SUBSTATES.__CAR_WEAPONS);
    break;
case SUBSTATES.__CAR_WEAPONS:
    gameControllerSubstateSet(SUBSTATES.__CAR_MOVE);
    break;
}
