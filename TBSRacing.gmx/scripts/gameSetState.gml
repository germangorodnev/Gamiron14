///gameSetState(GAME_STATES new)
global.oGameState = global.gameState;
global.gameState = argument[0];
with (oStateObject)
{
    if (flagIsActive(flags, OBJ_PAR.IMPACTABLE_PAUSE))
    {
        if (stateCreated != global.gameState)
        {
            updWas = flags & OBJ_PAR.UPDATABLE;
            flags &= ~OBJ_PAR.UPDATABLE;
            flags |= OBJ_PAR.DRAWABLE;
            event_perform(ev_other, ev_user0)
        }
        else
        {
            flagSet(OBJ_PAR.UPDATABLE, updWas);
            flags |= OBJ_PAR.DRAWABLE;
            event_perform(ev_other, ev_user1);
        }
    }
}

