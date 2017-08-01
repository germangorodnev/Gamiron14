if (engineHP <= 0)
{
    // die
    switch (team)
    {
    case 0:
        carSetState(PL_CAR_ST.__DIE);
        break;
    case 1:
        enemySetState(EN_CAR_ST.__DIE);
        break;
    }
}
