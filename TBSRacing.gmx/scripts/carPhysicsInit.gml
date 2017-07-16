///carPhysicsInit(type)
switch (argument[0])
{
case CARS.__MINI_VAN:
    sprite_index = sPlayerCar1;
    // make the fixture
    var fix = physics_fixture_create();
    physics_fixture_set_collision_group(fix, 0);    
    physics_fixture_set_density(fix, .2);  
    physics_fixture_set_restitution(fix, .2);  
    physics_fixture_set_linear_damping(fix, .3);  
    physics_fixture_set_angular_damping(fix, 3);  
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
    break;
    
case CARS.__MINI_TRUCK:
    sprite_index = sPlayerCar2;
    // make the fixture
    var fix = physics_fixture_create();
    physics_fixture_set_collision_group(fix, 0);    
    physics_fixture_set_density(fix, .3);  
    physics_fixture_set_restitution(fix, .3);  
    physics_fixture_set_linear_damping(fix, .4);  
    physics_fixture_set_angular_damping(fix, 3);  
    physics_fixture_set_awake(fix, 1);

    var xoff = sprite_get_xoffset(sprite_index),
        yoff = sprite_get_yoffset(sprite_index);
    physics_fixture_set_polygon_shape(fix);
    physics_fixture_add_point(fix, 1 - xoff, 6 - yoff);
    physics_fixture_add_point(fix, 6 - xoff, 4 - yoff);
    physics_fixture_add_point(fix, 116 - xoff, 3 - yoff);
    physics_fixture_add_point(fix, 123 - xoff, 8 - yoff);
    physics_fixture_add_point(fix, 123 - xoff, 48 - yoff);
    physics_fixture_add_point(fix, 116 - xoff, 54 - yoff);
    physics_fixture_add_point(fix, 6 - xoff, 54 - yoff);
    physics_fixture_add_point(fix, 1 - xoff, 51 - yoff);
    
    fixtures[fixturesCnt++] = physics_fixture_bind(fix, id);
    physics_fixture_delete(fix);
    
    // parameters
    //spdMaxForward = 
    break;

case CARS.__ORANGE:
    sprite_index = sPlayerCar3;
    // make the fixture
    var fix = physics_fixture_create();
    physics_fixture_set_collision_group(fix, 0);    
    physics_fixture_set_density(fix, .5);  
    physics_fixture_set_restitution(fix, .3);  
    physics_fixture_set_linear_damping(fix, .3);  
    physics_fixture_set_angular_damping(fix, 3);  
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
    spdMaxForward = 190;
    spdAccelForward = .12;
    spdAccelBrake = .2;
    break;
}
