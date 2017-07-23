///gameScoreIncrease(val)
with (oGameController)
{
    SCORE += argument[0];
    SCORE_STR = addTrailingZeroes(SCORE, 8);
}
