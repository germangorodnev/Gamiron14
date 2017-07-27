state = argument[0];
switch (state)
{
case 0:
    with (oGarageCar)
        instance_destroy();
    // create 4 slots
    var stww = 150;
    var xcr = 0,
        ycr = 100,
        xbetw = 40;
    xcr = global.guiW / 2 - stww * 2 - xbetw * 1.5;
    for (var i = 0; i < 4; i++)
    {
        var c = instance_create(xcr, ycr, oGarageCar);
        c.ind = i;
        xcr += stww + xbetw;
    }
    garageUpdateCarSlots();
    break;
case 1:
    dragInd = -1;
    carInd = argument[1];
    with (oGarageCar)
    {
        if (ind != argument[1])
            state = 2;
        else
        {
            state = 1;
            // recalculate rectangles
            switch (slot)
            {
            case 0:
                wrx1[slot] = xcenter - 300;
                wry1[slot] = st0y1 + 80;
                wrpx[slot] = wrx1[slot];
                wrpy[slot] = wry1[slot] + 350;
                break;
            }
        }
    }
    break;
}
