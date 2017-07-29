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
            xwentfrom = st0x1;
            // recalculate rectangles
            with (oGarageWSlot)
                instance_destroy();
            for (var slot = 0; slot < wcount; slot++)
            {
                var obj = instance_create(0, 0, oGarageWSlot);
                wSlot[slot] = obj;
                obj.car = id;
                obj.ind = slot;
                switch (slot)
                {
                case 0:
                    obj.x = xcenter - 300;
                    obj.y = st0y1 - 100;
                    obj.cx = xcenter + xoff + lengthdir_x(woff[slot], oGarageController.CAR_ANGLE + wlen[slot]);
                    obj.cy = spy + yoff + lengthdir_y(woff[slot], oGarageController.CAR_ANGLE + wlen[slot]);
                    obj.px = xcenter - 300;
                    obj.py = obj.cy - 50;
                    break;
                case 1:
                    obj.x = xcenter + 250;
                    obj.y = st0y1 - 35;
                    obj.cx = xcenter + xoff + lengthdir_x(woff[slot], oGarageController.CAR_ANGLE + wlen[slot]);
                    obj.cy = spy + yoff + lengthdir_y(woff[slot], oGarageController.CAR_ANGLE + wlen[slot]);
                    obj.px = xcenter + 390;
                    obj.py = obj.cy - 100;
                    break;
                case 2:
                    obj.x = xcenter + 300;
                    obj.y = st0y1 + 300;
                    obj.cx = xcenter + xoff + lengthdir_x(woff[slot], oGarageController.CAR_ANGLE + wlen[slot]);
                    obj.cy = spy + yoff + lengthdir_y(woff[slot], oGarageController.CAR_ANGLE + wlen[slot]);
                    obj.px = xcenter + 130;
                    obj.py = obj.cy + 150;
                    break;
                }
                with (obj) 
                    event_user(11);
            }
        }
    }
    break;
    
case 2:
    dragInd = -1;
    carInd = -1;
    with (oGarageCar)
    {
        if (ind != argument[1])
            state = 0;
        else
        {
            state = 3;
            // recalculate rectangles
            with (oGarageWSlot)
                state = 1;
        }
    }
    state = 0;
    oControl.key[KEY.MOUSE_LEFT] = -1;
    garageChangeFolder(folderAInd);
    break;
}
