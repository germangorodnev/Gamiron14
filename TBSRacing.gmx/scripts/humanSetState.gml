///humanSetState(HUMAN_STATES)
state = argument[0];

switch (state)
{
case HUMAN_STATES.__IDLE:
    break;
case HUMAN_STATES.__MOVE_POINT:
    break;
case HUMAN_STATES.__AVOID:
    break;
case HUMAN_STATES.__FLY_AWAY:
    physics_remove_fixture(id, circleFix);
    humanSetSprite(1, sHandFall1);
    humanSetSprite(2, sHandFall1);
    humanSetSprite(3, sLegFall1);
    humanSetSprite(4, sLegFall1);
    // torso
    torsoI = 2;
    torsoSpd = 0;
    torsoState = 1;
    // head
    headSpd = .2;
    headState = 1;
    // hands
    handLState = 5;
    handRState = 5;
    handLScale = 1;
    handRScale = handLScale;
    handLL /= 1.2;
    handRL = handLL;
    // legs
    legLI = 0;
    legRI = legLI;
    legLSpd = 0;
    legRSpd = 0;
    legLScale = -1;
    legRScale = legLScale;
    legLD = 160;
    legLL = 22;
    legRL = legLL;
    legRD = 200;
    legLState = 5;
    legRState = legLState;   
    legLState = 1;
    legRState = legLState; 
    break;
    
case HUMAN_STATES.__WANDER:

    break;
    
case HUMAN_STATES.__DIE:   
    physics_remove_fixture(id, collisionFix);
    physics_fixture_set_sensor(colFixFix, 1);
    collisionFix = physics_fixture_bind(colFixFix, id);
    depth = 5;
    phy_speed_x = 0;
    phy_speed_y = 0;
    phy_angular_velocity = 0;
    for (var i = 0; i < bloodsCount; i++)
    {
        bloodsR[i] = .5;
        bloodsX[i] = phy_position_x + irandom_range(5, 13) * choose(-1, 1);
        bloodsY[i] = phy_position_y + irandom_range(5, 13) * choose(-1, 1);
    }
    break;
}
