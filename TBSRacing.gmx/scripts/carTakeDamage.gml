///carTakeDamage(dmg)
// return: 0 - didn't take dmg, 1 - took
if (!flagIsActive(flags, OBJ_PAR.DAMAGABLE))
    return 0;
  
engineHP -= argument[0];
return 1;      
/*if (weaponsCount > 0)
{
    switch (choose(
}
