///gameLevelEnd(win)
with (oGameController)
    gameControllerStateSet(INGAME_STATES.ENDLEVEL);
with (instance_create(view_xview, view_yview, oLevelEnd))
{
    if (argument[0])
    {
        // win
        text = systemGetPhrase(0, 1);
        textc1 = make_colour_hsv(88, 180, 102);
        textc2 = make_colour_hsv(88, 180, 60);
    }
    else
    {
        // lose
        text = systemGetPhrase(0, 2);
        textc1 = make_colour_hsv(0, 180, 102);
        textc2 = make_colour_hsv(0, 180, 60);
    }
}
