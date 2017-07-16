instance_destroy(oYesno);
switch (global.gameState)
{
case GAME_STATES.__TURNENDYESNO:
    turnEndApproval = yesno;
    gameSetState(global.oGameState);
    // end the turn
    if (turnEndApproval)
        gameControllerStateSet(INGAME_STATES.GAME);    
    break;
}

