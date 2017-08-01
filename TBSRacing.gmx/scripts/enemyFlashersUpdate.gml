switch (flashersState)
{
case 0:
    flasherAlpha[0] = approach(flasherAlpha[0], 1, flasherAlphaD);
    flasherAlpha[1] = approach(flasherAlpha[1], 0, flasherAlphaD);
    if (flasherTmr == -1)
    {
        if (flasherAlpha[0] == 1)
        {
            flasherTmr = room_speed / 2;
        }
    }
    else
    {
        if (flasherTmr && !--flasherTmr)
        {
            flasherTmr = -1;
            flashersState = 1;
        }
    }
    break;
    
case 1:
    flasherAlpha[0] = approach(flasherAlpha[0], 0, flasherAlphaD);
    flasherAlpha[1] = approach(flasherAlpha[1], 1, flasherAlphaD);
    if (flasherTmr == -1)
    {
        if (flasherAlpha[1] == 1)
        {
            flasherTmr = room_speed / 2;
        }
    }
    else
    {
        if (flasherTmr && !--flasherTmr)
        {
            flasherTmr = -1;
            flashersState = 0;
        }
    }
    break;
}
