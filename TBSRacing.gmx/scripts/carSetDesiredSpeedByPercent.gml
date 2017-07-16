///carSetDesiredSpeedByPercent(-1 -- 1)
spdDesiredPercent = argument[0];
if (argument[0] >= 0)
    spdDesired = spdMaxForward * spdDesiredPercent;
else
    spdDesired = spdMaxBackward * spdDesiredPercent;
