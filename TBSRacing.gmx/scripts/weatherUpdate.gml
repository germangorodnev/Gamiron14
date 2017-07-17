/*if (weather & WEAHTER.__RAINY)
{
    part_system_update(psysrain);
    var thirdX = global.guiW div 3, 
        thirdY = global.guiH div 3,
        bx = view_xview + global.guiW,
        by = view_yview + global.guiH / 2;
    for (var i = 0; i < 360; i += 15)
    {
        part_emitter_region(psysrain, rainemm, view_xview, view_xview + thirdX,
            view_yview, view_yview, ps_shape_rectangle, ps_distr_gaussian);
        part_type_direction(raintype, 265, 290, 0, 0);
        part_type_orientation(raintype, 265, 290, 0, 0, 0);
        part_emitter_burst(psysrain, rainemm, raintype, irandom_range(5, 12));    
    }
}
