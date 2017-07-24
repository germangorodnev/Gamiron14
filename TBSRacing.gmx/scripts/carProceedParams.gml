/////// ENGINE TEMPERATURE /////////
engineTemperature = clamp(
    engineTemperature + engineTemperatureIncr * (abs(spd) / spdMaxForward),
    0,
    engineMaxTemperature);
if (engineTemperature >= engineMaxTemperature)
{
}

/////// SPEED CHANGING /////////
if (spdDesiredPercent > 0)
{
    // increase speed
    var spdChange = spdAccelForward;
    if (spdDesired < spd) // braking
        spdChange = spdBrakeForward;
    spd += spdChange * sign(spdDesired - spd);
    spd = clamp(spd, -spdMaxBackward, spdMaxForward);
}
else if (spdDesiredPercent < 0) 
{
    // decrease speed to backward
    var spdChange = spdAccelBackward;
    if (spd > 0)
        spdChange = spdAccelBrake;
    spd += spdAccelBackward * sign(spdDesired - spd);
    spd = clamp(spd, -spdMaxBackward, spdMaxForward);    
}
else
{
    // to 0
    spd -= min(spdAccelBrake * sign(spd), abs(spd) * sign(spd));
    spd = clamp(spd, -spdMaxBackward, spdMaxForward);  
    phy_speed_x /= 1.005;
    phy_speed_y /= 1.005;
    // change speed too  
    if (phy_speed < .03)
    {
        phy_speed_x = 0;
        phy_speed_y = 0;
    }
}


