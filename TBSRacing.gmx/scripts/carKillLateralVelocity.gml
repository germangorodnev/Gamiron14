var forwX = lengthdir_x(1, -phy_rotation),
    forwY = lengthdir_y(1, -phy_rotation),
    rightX = lengthdir_x(1, -phy_rotation - 90),
    rightY = lengthdir_y(1, -phy_rotation - 90);
var dp = dot_product(phy_linear_velocity_x, phy_linear_velocity_y, forwX, forwY);
var forwVelX = forwX * dp,
    forwVelY = forwY * dp;
dp = dot_product(phy_linear_velocity_x, phy_linear_velocity_y, rightX, rightY);
var rightVelX = rightX * dp,
    rightVelY = rightY * dp;
var arr;
phy_linear_velocity_x = forwVelX + rightVelX;
phy_linear_velocity_y = forwVelY + rightVelY;
//return arr;
/*Vector2 forwardVelocity = car.Forward * Vector2.Dot(car.Velocity, car.Forward);
    Vector2 rightVelocity = car.Right * Vector2.Dot(car.Velocity, car.Right);
    car.Velocity = forwardVelocity + rightVelocity * drift;*/
/*
var ximp, yimp;
var xright = lengthdir_x(1, phy_rotation - 90),
    yright = lengthdir_y(1, phy_rotation - 90);
var dot = dot_product(xright, yright, phy_linear_velocity_x, phy_linear_velocity_y);
var lateralX = xright * dot,
    lateralY = yright * dot;
    
ximp = 1 * -lateralX;
yimp = 1 * -lateralY;
    
physics_apply_force(phy_position_x, phy_position_y, ximp, yimp);
/*b2Vec2 getLateralVelocity() {
    b2Vec2 currentRightNormal = m_body->GetWorldVector( b2Vec2(1,0) );
    return b2Dot( currentRightNormal, m_body->GetLinearVelocity() ) * currentRightNormal;
}
b2Vec2 impulse = m_body->GetMass() * -getLateralVelocity();
    m_body->ApplyLinearImpulse( impulse, m_body->GetWorldCenter() );
