///gameControllerStateSet(INGAME_STATES new)
ingameState = argument[0];
switch (ingameState)
{
case INGAME_STATES.GAME:
    enemiesMakeTurn();
    turnEndApproval = 0;
    with (oButtonEndTurn)
        instance_destroy();
    // begin the (n)sec turn
    playerGUISetSelectedCar(noone);
    gameControllerSubstateSet(SUBSTATES.__NONE);
    turnTimer = turnTurns;
    with (oStateObject)
    {
        flagSet(OBJ_PAR.UPDATABLE, updWas);
        flags |= OBJ_PAR.DRAWABLE;
        event_user(1);
        if (flagIsActive(flags, OBJ_PAR.PHYSICAL))
            event_user(6);
    }
    with (oCamera)
        flagSet(OBJ_PAR.UPDATABLE, 1);
    with (oAnimatedWater)
        flagSet(OBJ_PAR.UPDATABLE, 1);
    with (oHumanGenerator)
        flagSet(OBJ_PAR.UPDATABLE, 1);
    with (oPopupText)
        flagSet(OBJ_PAR.UPDATABLE, 1);
    with (oBasePhysicalMovable)
        flagSet(OBJ_PAR.UPDATABLE, 1);
    with (oBasePhysicalStatic)
        flagSet(OBJ_PAR.UPDATABLE, 1);
    break;
    
case INGAME_STATES.TURN:
    gameControllerSubstateSet(SUBSTATES.__NONE);
    with (oStateObject)
    {
        if (flagIsActive(flags, OBJ_PAR.IMPACTABLE_TURN))
        {
            updWas = flags & OBJ_PAR.UPDATABLE;
            flags &= ~OBJ_PAR.UPDATABLE;
            flags |= OBJ_PAR.DRAWABLE;
            event_user(0);
            
            if (flagIsActive(flags, OBJ_PAR.PHYSICAL))
                event_user(5);
        }
    }
    turnEndApproval = 0;
    instance_create(0, 0, oButtonEndTurn);
    break;
}


