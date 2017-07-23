torsoCol = make_colour_hsv(irandom(255), irandom_range(35, 255), irandom_range(35, 240));

hairCol = make_colour_hsv(irandom_range(0, 80), irandom_range(130, 250), irandom_range(100, 250));
hairI = irandom(hairNumb);

handLCol = torsoCol;
handRCol = handLCol;

handLL = 16;
handLD = 82;
handRL = handLL;
handRD = -handLD;

legLCol = make_colour_hsv(irandom(255), irandom_range(35, 255), irandom_range(35, 240));
legRCol = legLCol;

legLL = 8;
legLD = 82;
legRL = legLL;
legRD = -legLD;

// collision with others
with (collider)
{
    colFixFix = physics_fixture_create();
    physics_fixture_set_density(colFixFix, .05);
    physics_fixture_set_collision_group(colFixFix, 3);
    physics_fixture_set_linear_damping(colFixFix, .9);
    physics_fixture_set_angular_damping(colFixFix, 2);
    physics_fixture_set_density(colFixFix, .8);
    physics_fixture_set_awake(colFixFix, 1);
    
    physics_fixture_set_polygon_shape(colFixFix);
    var xoff = sprite_get_xoffset(sTorso),  
        yoff = sprite_get_yoffset(sTorso);
    physics_fixture_add_point(colFixFix, 15 - xoff, 21 - yoff);
    physics_fixture_add_point(colFixFix, 17 - xoff, 8 - yoff);
    physics_fixture_add_point(colFixFix, 24 - xoff, 1 - yoff);
    physics_fixture_add_point(colFixFix, 32 - xoff, 10 - yoff);
    physics_fixture_add_point(colFixFix, 33 - xoff, 25 - yoff);
    physics_fixture_add_point(colFixFix, 30 - xoff, 39 - yoff);
    physics_fixture_add_point(colFixFix, 22 - xoff, 43 - yoff);
    physics_fixture_add_point(colFixFix, 16 - xoff, 32 - yoff);
    collisionFix = physics_fixture_bind(colFixFix, id);
    physics_fixture_delete(colFixFix);
}
alarm[0] = 3;

var collideFix = physics_fixture_create();
physics_fixture_set_density(collideFix, .3);
physics_fixture_set_collision_group(collideFix, 2);
physics_fixture_set_linear_damping(collideFix, .9);
physics_fixture_set_angular_damping(collideFix, 2);
physics_fixture_set_density(collideFix, .8);
physics_fixture_set_awake(collideFix, 1);

physics_fixture_set_polygon_shape(collideFix);
var xoff = sprite_get_xoffset(sTorso),  
    yoff = sprite_get_yoffset(sTorso);
physics_fixture_add_point(collideFix, 15 - xoff, 21 - yoff);
physics_fixture_add_point(collideFix, 17 - xoff, 8 - yoff);
physics_fixture_add_point(collideFix, 24 - xoff, 1 - yoff);
physics_fixture_add_point(collideFix, 32 - xoff, 10 - yoff);
physics_fixture_add_point(collideFix, 33 - xoff, 25 - yoff);
physics_fixture_add_point(collideFix, 30 - xoff, 39 - yoff);
physics_fixture_add_point(collideFix, 22 - xoff, 43 - yoff);
physics_fixture_add_point(collideFix, 16 - xoff, 32 - yoff);

circleFix = physics_fixture_bind(collideFix, id);
physics_fixture_delete(collideFix);



