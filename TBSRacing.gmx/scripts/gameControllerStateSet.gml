///gameControllerStateSet(INGAME_STATES new)
ingameState = argument[0];
switch (ingameState)
{
case INGAME_STATES.GAME:
    turnEndApproval = 0;
    with (oButtonEndTurn)
        instance_destroy();
    // begin the (n)sec turn
    playerGUISetSelectedCar(noone);
    gameControllerSubstateSet(SUBSTATES.__NONE);
    turnTimer = turnTurns;
    with (oStateObject)
    {
        if (flagIsActive(flags, OBJ_PAR.PHYSICAL | OBJ_PAR.IMPACTABLE_TURN))
            event_perform(ev_other, ev_user6);
    }
    break;
    
case INGAME_STATES.TURN:
    turnEndApproval = 0;
    instance_create(0, 0, oButtonEndTurn);
    gameControllerSubstateSet(SUBSTATES.__NONE);
    with (oStateObject)
    {
        if (flagIsActive(flags, OBJ_PAR.PHYSICAL | OBJ_PAR.IMPACTABLE_TURN))
            event_perform(ev_other, ev_user5);
    }
    break;
}
