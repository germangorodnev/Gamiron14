if (drift)
{
    if (driftTmr && !--driftTmr)
    {
        gameScoreIncrease(driftScore);
        drift = 0;
        driftScore = 0;
        driftTmr = -1;
        driftsc = min(1.8, 1 + round(driftScore / 30) * .09)
    }
}

