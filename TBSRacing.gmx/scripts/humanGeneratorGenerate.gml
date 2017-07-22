repeat(irandom_range(3, 5))
    with (instance_create(0, 0, oHuman))
    {
        switch (choose(0, 0))
        {
        case 0:
            humanStartRandomMadePath();
            break;
        case 1:
            humanStartMovementByRandomPath();
            break;
        }
        visible = 1;    
    }
    

