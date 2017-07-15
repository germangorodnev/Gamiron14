///carPhysicsInit(type)
switch (argument[0])
{
case CARS.__MINI_VAN:
    sprite_index = sPlayerCar1;
    // make the fixture
    var fix = physics_fixture_create();
    physics_fixture_set_collision_group(fix, 0);    
    physics_fixture_set_density(fix, .3);  
    physics_fixture_set_restitution(fix, .3);  
    physics_fixture_set_linear_damping(fix, .1);  
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
}
