/////// ENGINE TEMPERATURE /////////
engineTemperature = clamp(
    engineTemperature + engineTemperatureIncr * (abs(spd) / spdMaxForward),
    0,
    engineMaxTemperature);
if (engineTemperature >= engineMaxTemperature)
{
    show_message("BOOM");
    game_restart();
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
    spd += spdAccelBackward * sign(spdDesired - spd);
    spd = clamp(spd, -spdMaxBackward, spdMaxForward);    
}
else
{
    // to 0
    spd -= min(spdAccelBrake * sign(spd), abs(spd) * sign(spd));
    spd = clamp(spd, -spdMaxBackward, spdMaxForward);    
}


