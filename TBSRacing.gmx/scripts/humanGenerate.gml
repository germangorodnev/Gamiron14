torsoCol = make_colour_hsv(irandom(255), irandom_range(35, 255), irandom_range(35, 240));

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

// collision with others, sphere
colFixFix = physics_fixture_create();
physics_fixture_set_density(colFixFix, .8);
physics_fixture_set_collision_group(colFixFix, 0);
physics_fixture_set_linear_damping(colFixFix, .9);
physics_fixture_set_angular_damping(colFixFix, 1);
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
//physics_fixture_delete(colFixFix);


var collideFix = physics_fixture_create();
physics_fixture_set_collision_group(collideFix, 2);
physics_fixture_set_circle_shape(collideFix, irandom_range(20, 25));

circleFix = physics_fixture_bind(collideFix, id);
physics_fixture_delete(collideFix);



