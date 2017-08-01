///carPhysicsInit(type)
var ad = .7,
    rest = .2,
    densityBase = .5;
    
// wheels
for (var i = 0; i < wheelsCount; i++)
{
    wheelMaxHP[i] = 100;
    wheelHP[i] = wheelMaxHP[i];
}

switch (argument[0])
{
case CARS.__MINI_VAN:
    sprite_index = sPlayerCar1;
    // make the fixture
    var fix = physics_fixture_create();
    physics_fixture_set_collision_group(fix, 0);    
    physics_fixture_set_density(fix, densityBase);  
    physics_fixture_set_restitution(fix, rest);  
    physics_fixture_set_linear_damping(fix, .5);  
    physics_fixture_set_angular_damping(fix, ad);  
    physics_fixture_set_awake(fix, 1);

    var xoff = sprite_get_xoffset(sprite_index),
        yoff = sprite_get_yoffset(sprite_index);
    physics_fixture_set_polygon_shape(fix);
    physics_fixture_add_point(fix, 0 - xoff, 5 - yoff);
    physics_fixture_add_point(fix, 140 - xoff, 10 - yoff);
    physics_fixture_add_point(fix, 150 - xoff, 19 - yoff);
    physics_fixture_add_point(fix, 150 - xoff, 47 - yoff);
    physics_fixture_add_point(fix, 140 - xoff, 62 - yoff);
    physics_fixture_add_point(fix, 0 - xoff, 65 - yoff);
    physics_fixture_add_point(fix, 0 - xoff, 5 - yoff);
    
    fixtures[fixturesCnt++] = physics_fixture_bind(fix, id);
    physics_fixture_delete(fix);
    
    // particles
    part_type_sprite(ptyre, sPlayerCar1Tyre, 0, 0, 0);
    
    // light
    forwLightX = 35;
    forwLightY = 15;
    
    weaponsCount = 2;
    
    engineHP = 200;
    engineMaxHP = engineHP;
    
    break;
    
case CARS.__MINI_TRUCK:
    sprite_index = sPlayerCar2;
    // make the fixture
    var fix = physics_fixture_create();
    physics_fixture_set_collision_group(fix, 0);    
    physics_fixture_set_density(fix, densityBase);  
    physics_fixture_set_restitution(fix, rest);  
    physics_fixture_set_linear_damping(fix, .4);  
    physics_fixture_set_angular_damping(fix, ad);  
    physics_fixture_set_awake(fix, 1);

    var xoff = sprite_get_xoffset(sprite_index),
        yoff = sprite_get_yoffset(sprite_index);
    physics_fixture_set_polygon_shape(fix);
    physics_fixture_add_point(fix, 7 - xoff, 4 - yoff);
    physics_fixture_add_point(fix, 133 - xoff, 4 - yoff);
    physics_fixture_add_point(fix, 144 - xoff, 10 - yoff);
    physics_fixture_add_point(fix, 144 - xoff, 57 - yoff);
    physics_fixture_add_point(fix, 133 - xoff, 63 - yoff);
    physics_fixture_add_point(fix, 6 - xoff, 65 - yoff);
    physics_fixture_add_point(fix, 0 - xoff, 59 - yoff);
    physics_fixture_add_point(fix, 0 - xoff, 9 - yoff);
    
    fixtures[fixturesCnt++] = physics_fixture_bind(fix, id);
    physics_fixture_delete(fix);
    
    // parameters
    spdMaxForward = 180;
    spdAccelForward = 2.3;
    spdAccelBrake = 2.8;
    spdAccelBackward = 3;
    angleTorque = .9;
    
    // particles
    part_type_sprite(ptyre, sPlayerCar2Tyre, 0, 0, 0);
    
    weaponsCount = 1;
    
    engineHP = 300;
    engineMaxHP = engineHP;

    break;

case CARS.__ORANGE:
    sprite_index = sPlayerCar3;
    // make the fixture
    var fix = physics_fixture_create();
    physics_fixture_set_collision_group(fix, 0);    
    physics_fixture_set_density(fix, densityBase);  
    physics_fixture_set_restitution(fix, rest);  
    physics_fixture_set_linear_damping(fix, .3);  
    physics_fixture_set_angular_damping(fix, ad);  
    physics_fixture_set_awake(fix, 1);

    var xoff = sprite_get_xoffset(sprite_index),
        yoff = sprite_get_yoffset(sprite_index);
    physics_fixture_set_polygon_shape(fix);
    physics_fixture_add_point(fix, 0 - xoff, 8 - yoff);
    physics_fixture_add_point(fix, 5 - xoff, 3 - yoff);
    physics_fixture_add_point(fix, 116 - xoff, 1 - yoff);
    physics_fixture_add_point(fix, 126 - xoff, 4 - yoff);
    physics_fixture_add_point(fix, 126 - xoff, 47 - yoff);
    physics_fixture_add_point(fix, 116 - xoff, 52 - yoff);
    physics_fixture_add_point(fix, 5 - xoff, 50 - yoff);
    physics_fixture_add_point(fix, 0 - xoff, 46 - yoff);
    
    fixtures[fixturesCnt++] = physics_fixture_bind(fix, id);
    physics_fixture_delete(fix);
    
    // parameters
    spdMaxForward = 150;
    spdAccelForward = 2;
    spdAccelBrake = 2.5;
    spdAccelBackward = 2;
    angleTorque = .8;
    
    // particles
    part_type_sprite(ptyre, sPlayerCar3Tyre, 0, 0, 0);
    
    weaponsCount = 1;
    
    engineHP = 280;
    engineMaxHP = engineHP;
    break;
    
case CARS.__SCOOL_BUS:
    sprite_index = sPlayerCar4;
    // make the fixture
    // left
    var fix = physics_fixture_create();
    var density = .4;
    physics_fixture_set_collision_group(fix, 0);    
    physics_fixture_set_density(fix, density);  
    physics_fixture_set_restitution(fix, .15);  
    physics_fixture_set_linear_damping(fix, .3);  
    physics_fixture_set_angular_damping(fix, ad);  
    physics_fixture_set_awake(fix, 1);

    var xoff = sprite_get_xoffset(sprite_index),
        yoff = sprite_get_yoffset(sprite_index);
    physics_fixture_set_polygon_shape(fix);
    physics_fixture_add_point(fix, 0 - xoff, 12 - yoff);
    physics_fixture_add_point(fix, 231 - xoff, 11 - yoff);
    physics_fixture_add_point(fix, 235 - xoff, 16 - yoff);
    physics_fixture_add_point(fix, 235 - xoff, 98 - yoff);
    physics_fixture_add_point(fix, 231 - xoff, 103 - yoff);
    physics_fixture_add_point(fix, 0 - xoff, 102 - yoff);   
     
    fixtures[fixturesCnt++] = physics_fixture_bind(fix, id);
    physics_fixture_delete(fix);
    
    // right
    fix = physics_fixture_create();
    physics_fixture_set_collision_group(fix, 0);    
    physics_fixture_set_density(fix, density);  
    physics_fixture_set_restitution(fix, .01);  
    physics_fixture_set_linear_damping(fix, .3);  
    physics_fixture_set_angular_damping(fix, ad);  
    physics_fixture_set_awake(fix, 1);

    physics_fixture_set_polygon_shape(fix);
    physics_fixture_add_point(fix, 235 - xoff, 16 - yoff);
    physics_fixture_add_point(fix, 247 - xoff, 17 - yoff);
    physics_fixture_add_point(fix, 255 - xoff, 53 - yoff);
    physics_fixture_add_point(fix, 254 - xoff, 81 - yoff);
    physics_fixture_add_point(fix, 247 - xoff, 97 - yoff);
    physics_fixture_add_point(fix, 235 - xoff, 98 - yoff);

    fixtures[fixturesCnt++] = physics_fixture_bind(fix, id);
    physics_fixture_delete(fix);

    // parameters
    spdMaxForward = 235;
    spdAccelForward = 5;
    spdAccelBrake = 7;
    spdAccelBackward = 7;
    angleTorque = 1.5;
    
    // particles
    part_type_sprite(ptyre, sPlayerCar4Tyre, 0, 0, 0);
    
    weaponsCount = 3;
    
    engineHP = 425;
    engineMaxHP = engineHP;

    break;
    
    
    
    
    
    
////////////////// POLICE //////////////////////
case CARS.__POLICE:
    sprite_index = sPoliceCar1;
    // make the fixture
    // left
    var fix = physics_fixture_create();
    physics_fixture_set_collision_group(fix, 0);    
    physics_fixture_set_density(fix, .5);  
    physics_fixture_set_restitution(fix, rest);  
    physics_fixture_set_linear_damping(fix, .3);  
    physics_fixture_set_angular_damping(fix, ad);  
    physics_fixture_set_awake(fix, 1);

    var xoff = sprite_get_xoffset(sprite_index),
        yoff = sprite_get_yoffset(sprite_index);
    physics_fixture_set_polygon_shape(fix);
    physics_fixture_add_point(fix, 38 - xoff, 55 - yoff);
    physics_fixture_add_point(fix, 19 - xoff, 57 - yoff);
    physics_fixture_add_point(fix, 5 - xoff, 49 - yoff);
    physics_fixture_add_point(fix, 0 - xoff, 38 - yoff);
    physics_fixture_add_point(fix, 0 - xoff, 21 - yoff);
    physics_fixture_add_point(fix, 5 - xoff, 12 - yoff);
    physics_fixture_add_point(fix, 19 - xoff, 3 - yoff);
    physics_fixture_add_point(fix, 38 - xoff, 5 - yoff);
    
    fixtures[fixturesCnt++] = physics_fixture_bind(fix, id);
    physics_fixture_delete(fix);
    
    // center
    fix = physics_fixture_create();
    physics_fixture_set_collision_group(fix, 0);    
    physics_fixture_set_density(fix, .5);  
    physics_fixture_set_restitution(fix, .3);  
    physics_fixture_set_linear_damping(fix, .3);  
    physics_fixture_set_angular_damping(fix, ad);  
    physics_fixture_set_awake(fix, 1);

    physics_fixture_set_polygon_shape(fix);
    physics_fixture_add_point(fix, 38 - xoff, 5 - yoff);
    physics_fixture_add_point(fix, 92 - xoff, 1 - yoff);
    physics_fixture_add_point(fix, 112 - xoff, 4 - yoff);
    physics_fixture_add_point(fix, 128 - xoff, 20 - yoff);
    physics_fixture_add_point(fix, 128 - xoff, 39 - yoff);
    physics_fixture_add_point(fix, 112 - xoff, 57 - yoff);
    physics_fixture_add_point(fix, 92 - xoff, 59 - yoff);

    fixtures[fixturesCnt++] = physics_fixture_bind(fix, id);
    physics_fixture_delete(fix);

    // parameters
    spdMaxForward = 160;
    spdAccelForward = 1.6;
    spdAccelBrake = 3.5;
    spdAccelBackward = 3;
    angleTorque = .8;
    
    weaponsCount = 1;
    
    engineHP = 260;
    engineMaxHP = engineHP;
    break;
    
    
    
    
    
    
/////////////////////// BLACKS /////////////////////////
case CARS.__BLACKS_JEEP:
    sprite_index = sBlacksCar1;
    // make the fixture
    // forward 
    var fix = physics_fixture_create();
    physics_fixture_set_collision_group(fix, 0);    
    physics_fixture_set_density(fix, densityBase);  
    physics_fixture_set_restitution(fix, rest);  
    physics_fixture_set_linear_damping(fix, .3);  
    physics_fixture_set_angular_damping(fix, ad);  
    physics_fixture_set_awake(fix, 1);

    var xoff = sprite_get_xoffset(sprite_index),
        yoff = sprite_get_yoffset(sprite_index);
    physics_fixture_set_polygon_shape(fix);
    physics_fixture_add_point(fix, 15 - xoff, 4 - yoff);
    physics_fixture_add_point(fix, 132 - xoff, 4 - yoff);
    physics_fixture_add_point(fix, 145 - xoff, 18 - yoff);
    physics_fixture_add_point(fix, 148 - xoff, 33 - yoff);
    physics_fixture_add_point(fix, 145 - xoff, 50 - yoff);
    physics_fixture_add_point(fix, 132 - xoff, 63 - yoff);
    physics_fixture_add_point(fix, 15 - xoff, 63 - yoff);
    
    fixtures[fixturesCnt++] = physics_fixture_bind(fix, id);
    physics_fixture_delete(fix);
    
    fix = physics_fixture_create();
    physics_fixture_set_collision_group(fix, 0);    
    physics_fixture_set_density(fix, .5);  
    physics_fixture_set_restitution(fix, .3);  
    physics_fixture_set_linear_damping(fix, .3);  
    physics_fixture_set_angular_damping(fix, ad);  
    physics_fixture_set_awake(fix, 1);

    physics_fixture_set_polygon_shape(fix);
    physics_fixture_add_point(fix, 15 - xoff, 63 - yoff);
    physics_fixture_add_point(fix, 5 - xoff, 58 - yoff);
    physics_fixture_add_point(fix, 0 - xoff, 51 - yoff);
    physics_fixture_add_point(fix, 0 - xoff, 22 - yoff);
    physics_fixture_add_point(fix, 5 - xoff, 10 - yoff);
    physics_fixture_add_point(fix, 15 - xoff, 4 - yoff);
    
    fixtures[fixturesCnt++] = physics_fixture_bind(fix, id);
    physics_fixture_delete(fix);
    
    // parameters
    spdMaxForward = 170;
    spdAccelForward = 2.4;
    spdAccelBrake = 3.6;
    spdAccelBackward = 3.5;
    angleTorque = 1.3;
    
    // particles
    part_type_sprite(ptyre, sPlayerCar3Tyre, 0, 0, 0);
    
    weaponsCount = 1;
    
    engineHP = 200;
    engineMaxHP = engineHP;
    break;
    
case CARS.__BLACKS_DODGE:
    sprite_index = sBlacksCar2;
    // make the fixture
    // forward 
    var fix = physics_fixture_create();
    physics_fixture_set_collision_group(fix, 0);    
    physics_fixture_set_density(fix, densityBase);  
    physics_fixture_set_restitution(fix, rest);  
    physics_fixture_set_linear_damping(fix, .3);  
    physics_fixture_set_angular_damping(fix, ad);  
    physics_fixture_set_awake(fix, 1);

    var xoff = sprite_get_xoffset(sprite_index),
        yoff = sprite_get_yoffset(sprite_index);
    physics_fixture_set_polygon_shape(fix);
    physics_fixture_add_point(fix, 5 - xoff, 7 - yoff);
    physics_fixture_add_point(fix, 101 - xoff, 5 - yoff);
    physics_fixture_add_point(fix, 124 - xoff, 14 - yoff);
    physics_fixture_add_point(fix, 130 - xoff, 31 - yoff);
    physics_fixture_add_point(fix, 124 - xoff, 51 - yoff);
    physics_fixture_add_point(fix, 101 - xoff, 60 - yoff);
    physics_fixture_add_point(fix, 5 - xoff, 57 - yoff);

    
    fixtures[fixturesCnt++] = physics_fixture_bind(fix, id);
    physics_fixture_delete(fix);
    
    fix = physics_fixture_create();
    physics_fixture_set_collision_group(fix, 0);    
    physics_fixture_set_density(fix, .5);  
    physics_fixture_set_restitution(fix, .3);  
    physics_fixture_set_linear_damping(fix, .3);  
    physics_fixture_set_angular_damping(fix, ad);  
    physics_fixture_set_awake(fix, 1);

    physics_fixture_set_polygon_shape(fix);
    physics_fixture_add_point(fix, 5 - xoff, 57 - yoff);
    physics_fixture_add_point(fix, 0 - xoff, 42 - yoff);
    physics_fixture_add_point(fix, 0 - xoff, 19 - yoff);
    physics_fixture_add_point(fix, 5 - xoff, 7 - yoff);

    
    fixtures[fixturesCnt++] = physics_fixture_bind(fix, id);
    physics_fixture_delete(fix);
    
    // parameters
    spdMaxForward = 180;
    spdAccelForward = 2.3;
    spdAccelBrake = 4.5;
    spdAccelBackward = 4.6;
    angleTorque = 1.5;
    
    // particles
    part_type_sprite(ptyre, sPlayerCar3Tyre, 0, 0, 0);
    
    weaponsCount = 1;
    
    engineHP = 200;
    engineMaxHP = engineHP;
    break;
}

// weapons
for (var i = 0; i < weaponsCount; i++)
    weapon[i] = noone;
    
if (team == 1)
{
    // migalki
    enemyFlashersInit();
}

