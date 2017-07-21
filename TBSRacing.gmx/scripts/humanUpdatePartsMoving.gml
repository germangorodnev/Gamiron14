// hands
switch (handLState)
{
case 0: // just idle
    break;
case 1: // go forward
    handLI += handLSpd;
    if (handLI >= handLNumb)
        handLState = 2;
    break;
case 2: // go back
    handLI -= handLSpd;
    if (handLI <= 0)
    {
        handLState = 3;
        handLScale *= -1;
    }
    break;
case 3: // go back invert scale
    handLI += handLSpd;
    if (handLI >= handLNumb)
        handLState = 4;    
    break;
case 4: // go forward invert scale
    handLI -= handLSpd;
    if (handLI <= 0)
    {
        handLState = 1;
        handLScale *= -1;
    }
    break;
case 5:
    handLI += handRSpd;
    if (handLI >= handLNumb)
        handLI = handLNumb - 1;    
    break;
}

// right one
switch (handRState)
{
case 0: // just idle
    break;
case 1: // go forward
    handRI += handRSpd;
    if (handRI >= handRNumb)
        handRState = 2;
    break;
case 2: // go back
    handRI -= handRSpd;
    if (handRI <= 0)
    {
        handRState = 3;
        handRScale *= -1;
    }
    break;
case 3: // go back invert scale
    handRI += handRSpd;
    if (handRI >= handRNumb)
        handRState = 4;    
    break;
case 4: // go forward invert scale
    handRI -= handRSpd;
    if (handRI <= 0)
    {
        handRState = 1;
        handRScale *= -1;
    }
    break;
case 5:
    handRI += handRSpd;
    if (handRI >= handRNumb)
        handRI = handRNumb - 1;    
    break;
}

///////// LEGS
// left
switch (legLState)
{
case 0: // just idle
    break;
case 1: // go forward
    legLI += legLSpd;
    if (legLI >= legLNumb)
        legLState = 2;
    break;
case 2: // go back
    legLI -= legLSpd;
    if (legLI <= 0)
    {
        legLState = 3;
        legLScale *= -1;
    }
    break;
case 3: // go back invert scale
    legLI += legLSpd;
    if (legLI >= legLNumb)
        legLState = 4;    
    break;
case 4: // go forward invert scale
    legLI -= legLSpd;
    if (legLI <= 0)
    {
        legLState = 1;
        legLScale *= -1;
    }
    break;
}

// right
switch (legRState)
{
case 0: // just idle
    break;
case 1: // go forward
    legRI += legRSpd;
    if (legRI >= legRNumb)
        legRState = 2;
    break;
case 2: // go back
    legRI -= legRSpd;
    if (legRI <= 0)
    {
        legRState = 3;
        legRScale *= -1;
    }
    break;
case 3: // go back invert scale
    legRI += legRSpd;
    if (legRI >= legRNumb)
        legRState = 4;    
    break;
case 4: // go forward invert scale
    legRI -= legLSpd;
    if (legRI <= 0)
    {
        legRState = 1;
        legRScale *= -1;
    }
    break;
}


// torso
switch (torsoState)
{
case 0: break;
case 1:
    torsoI += torsoSpd;
    if (torsoI >= torsoNumb)
        torsoI = torsoNumb - 1;
    break;
}
   
// head
switch (headState)
{
case 0: break;
case 1: 
    headI += headSpd;
    if (headI >= headNumb)
        headI = headNumb - 1; 
    break;
}

